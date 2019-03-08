var newDate;
var timerTitle;
var timercss = 0;
var clockId = 0;
var str1 = "clockdiv";	
var newClockID;
var hex;
var link;
var priority;


function doData(data) {
	var results = [];
	var entries = data.feed.entry;
	var previousRow = 0;
		for (var i = 0; i < entries.length; i++) {
			var latestRow = results[results.length - 1];
			var cell = entries[i];
			var text = cell.content.$t;		
			var row = cell.gs$cell.row;
				if (row > previousRow) {
					var newRow = [];
					newRow.push(text);
					results.push(newRow);
					previousRow++;
				} else {
					latestRow.push(text);
				}
			}			
			handleResults(results);
		}
		
function createTimer(results){
	var div = document.createElement('div');
	div.innerHTML = 
	'<div class "box" style = "background-color: #' + hex + '; background-size: cover; background-repeat: no-repeat;">	' +
	'  <h1 style="font-size:2vw;">'+ timerTitle +'</h1>																	' +
	'	<div class="clock" id="clockdiv' + clockId + '">																	' +
	'	 <div class="endTimeDisplay" id="endTimeDisplay' + clockId + '" style= "visibility : hidden; background: black"> 	' +
	'		<h1 style="font-size:2vw;">' + endMessage + '</h1> 																' +
	'    </div> 																										' +
	'	 <div class="timeDisplay" id="timeDisplay"> 									' +
	'	  <div>																												' +
	'		<span class="days"></span>													  			' +
	'		<div class="smalltext">Days</div>									  				' +
	'	  </div>																											' +
	'	  <div>																												' +	
	'		<span class="hours"></span>												   				' +
	'		<div class="smalltext">Hours</div>													' +
	'	  </div>																											' +
	'	  <div>																												' +
	'		<span class="minutes"></span>																' +
	'		<div class="smalltext">Mins</div>														' +
	'	  </div>																											' +
	'	  <div>																												' +
	'		<span class="seconds"></span>																' +
	'		<div class="smalltext">Secs</div>														' +
	'	  </div>																											' +
	'    </div> 																										' +
	'	</div>																												' +
	'  <br>       																									' +
	'</div>';
					
	div.setAttribute('class', 'timer' + timercss); 
	 if (priority == 1){
			side1.appendChild(div);
			setTime(results);
			}
		else if (priority == 2){	
			side2.appendChild(div);
			setTime(results);
			}
		else if (priority == 3){	
			side3.appendChild(div);
			setTime(results);
			}
		}

function setTime(results){
	for(var i = 0; i < results.length; i++) 
		{		
			var deadline = new Date(newDate);
			initializeClock(newClockID, deadline);
		}
	}
		
function handleResults(spreadsheetArray) {
	spreadsheetArray.forEach(item => {
	timerTitle = item[0];
	newDate = item[1];
	hex = item[2];
	details = item[3];
	priority = item[4];
	endMessage = item[5];
	newClockID = str1.concat(clockId);
	createTimer(spreadsheetArray);
	timercss = timercss + 1;
	clockId = clockId + 1;
		});
	}

		
$.ajax({
	url: spreadsheetUrl,
	jsonp: 'doData',
	dataType: 'jsonp'
	});
	
		
function getTimeRemaining(endtime) {
	var t = Date.parse(endtime) - Date.parse(new Date());
	var seconds = Math.floor((t / 1000) % 60);
	var minutes = Math.floor((t / 1000 / 60) % 60);
	var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
	var days = Math.floor(t / (1000 * 60 * 60 * 24));
		return {
			'total': t,
			'days': days,
			'hours': hours,
			'minutes': minutes,
			'seconds': seconds
		};
}

function initializeClock(id, endtime) {
	var clock = document.getElementById(id);
	var daysSpan = clock.querySelector('.days');
	var hoursSpan = clock.querySelector('.hours');
	var minutesSpan = clock.querySelector('.minutes');
	var secondsSpan = clock.querySelector('.seconds');

function updateClock() {
    var t = getTimeRemaining(endtime);

    daysSpan.innerHTML = t.days;
    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

	if (t.total <= 0) {
	  clearInterval(timeinterval);
	  complete();
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

function complete() {
    	
	try {
		var x = document.getElementById('endTimeDisplay' + clockId + '');
        if (x.style.visibility == "hidden")
		{
			x.style.visibility = "visible";
		}
	}
	catch(err) {
		console.log(err.messsage);
	}
}