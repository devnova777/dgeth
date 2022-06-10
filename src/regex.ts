/*eslint require-unicode-regexp: error */
// @see {@link https://eslint.org/docs/rules/require-unicode-regexp}
export const ethereumAddress = /^0x([A-Fa-f0-9]{40})$/;
/* this is also equivalent: ^0x([0-9a-z]{2})*$ */
export const bytes = /^0x([A-Fa-f0-9]{2})$/;
export const bytes4 = /^0x([A-Fa-f0-9]{8})$/;
export const bytes32 = /^0x[0-9a-z]{64}$/;
export const bytes64 = /^0x([A-Fa-f0-9]{128})$/;
export const transactionHash = bytes32;
