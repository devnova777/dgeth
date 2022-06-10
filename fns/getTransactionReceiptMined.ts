
export function getTransactionReceiptMined(txHash: string | any[], interval: number) {
    const self = this;
    const transactionReceiptAsync = (resolve: (arg0: any) => void, reject: (arg0: any) => void) => {
        self.getTransactionReceipt(txHash, (error: any, receipt: any) => {
            if (error) {
                reject(error);
            } else if (receipt == null) {
                setTimeout(
                    () => transactionReceiptAsync(resolve, reject),
                    interval ? interval : 500);
            } else {
                resolve(receipt);
            }
        });
    };

    if (Array.isArray(txHash)) {
        return Promise.all(txHash.map(
            oneTxHash => self.getTransactionReceiptMined(oneTxHash, interval)));
    } else if (typeof txHash === "string") {
        return new Promise(transactionReceiptAsync);
    } else {
        throw new Error(`Invalid Type: ${txHash}`);
    }
};