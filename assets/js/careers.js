

function showOpenJobs() {
  var jobList = document.querySelectorAll("div.career-accordion");
  if (jobList) {
    var todayDate = new Date();
    var today = todayDate.getFullYear() * 10000 + (todayDate.getMonth()+1)*100 + todayDate.getDate();
    var none = document.getElementById('careers_none');

    jobList.forEach(function(job) {
      var start = parseInt(job.getAttribute('start'));
      var end = parseInt(job.getAttribute('end'));
      if ((start <= today) && (end >= today)) {
        job.classList.remove('hide');
        none.classList.add('hide');
      } else {
        job.classList.add('hide');
      }
    });
  }
  return;
}
