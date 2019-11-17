const promiseOne = () => {
  return new Promise((resolve, reject) => {
    const luck = Math.floor(Math.random() * 10);
    console.log(`1. My luck is ${luck}`);

    if (luck % 2 === 0) {
      resolve("1. Success");
    } else {
      reject("1. Failure");
    }
  });
};

promiseOne()
  .then(value => {
    console.log(value);
  })
  .catch(err => {
    console.log(err);
  });

const promiseTwo = () => {
  return new Promise((resolve, reject) => {
    const luck = Math.floor(Math.random() * 10);
    console.log(`2. My luck is ${luck}`);

    setTimeout(() => {
      if (luck % 2 === 0) {
        resolve("2. Success");
      } else {
        reject("2. Failure");
      }
    }, 1000);
  });
};

promiseTwo()
  .then(value => {
    console.log(value);
  })
  .catch(err => {
    console.log(err);
  });
