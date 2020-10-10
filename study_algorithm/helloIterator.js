"use strict";

/**
 * range object  
 * use `for of range(from, to, step)`
 * @param  {...number} parms (from, to, step)
 * @returns {Symbol} Symbol.iterator
 */
const range = (...parms) => {
  const state = {
    from: 0,
    to: 0,
    step: 1
  };
  if (parms.length > 1) {
    state.from = parms[0];
    state.to = parms[1];
    state.step = parms[2] ? parms[2] : 1;
  } else {
    state.to = parms[0];
  }
  state.from -= state.step;
  return {
    [Symbol.iterator]() {
      return {
        current: state.from,
        last: state.to,
        next() {
          this.current += state.step;
          if (this.current < this.last) {
            return { done: false, value: this.current };
          } else {
            return { done: true };
          }
        }
      }
    }
  };
};

for (let i of range(3)) {
  console.log(i);
}