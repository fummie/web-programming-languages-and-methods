'use strict'

document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('form');
  const input = document.getElementById('input');
  const initial = document.getElementById('initial');
  const modified = document.getElementById('modified');
  const validFeedback = document.getElementById('valid-feedback');
  const invalidFeedback = document.getElementById('invalid-feedback');

  const searchForMinimalPair = (array) => {
    let minimalSum = +array[0] + +array[1];
    for (let i = 0; i < array.length - 1; i++) {
      if (+array[i] + +array[i + 1] < minimalSum) {
        minimalSum = +array[i] + +array[i + 1];
      };
    };
    return minimalSum;
  };

  const isArrayValid = (array) => {
    if (array.length < 2) {
      return false;
    }
    for (let i = 0; i < array.length; i++) {
      if (!Number(array[i])) {
        return false;
      };
    };
    return true;
  };

  let array = [];

  form.onsubmit = (event) => {
    event.preventDefault();
    array = input.value.split(' ');

    if (isArrayValid(array)) {
      invalidFeedback.style = 'display: none';
      validFeedback.style = 'display: block';

      const output = searchForMinimalPair(array);
      initial.value = array;
      modified.value = output
    } else {
      invalidFeedback.style = 'display: block';
      validFeedback.style = 'display: none';
    };
  }
});
