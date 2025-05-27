 async function forEachAsync(sort) {
                for (const element of sort) {
                  console.log(element);
                  let kk = updateOverallposition(
                    element.classposition,
                    element.examclasscode,
                    element.student_id
                  );
                  console.log("kk");
                }
              }

              async function main(sort) {
                await forEachAsync(sort);
                console.log("Array.forEach() has finished running.");
              }
              main(sort);