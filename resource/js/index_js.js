var check_slide = true;
var check_album = true;
$(document).ready(function() {
	var result = "";
	var year = 2000;
	var count = 0;
	var total_years = [];
	for (var i = 0; i < 23; i++) {
		if (count == 5) {
			result += "</ul>";
			count = 0;
		};
		if (count == 0) {
			var temp = year + "-" + (year+4);
			result += "<li id='year" + temp + "';"
			result += "><h4>" + temp + "</h4></li>";
			result += "<ul id=\"year" + year + "\">";
		}
		result += "<li class = \"year\" id=\"" + year + "\">";
		result += year + "</li>";
		year++;
		count++;
	}
	$("#year").html(result);
	$.ajax({
		type: "GET",
		url: "resource/category.json",
		dataType: "json",
		success: function(responseData, status){
			var output = "";
			$.each(responseData.language, function(i, item){
				output += "<li class=\"language\" id=\"";
				output += item + "\">" + item + "</li>";
			});
			$("#language").html(output);
			output = "";
			$.each(responseData.style, function(i, item){
				output += "<li class=\"style\" id=\"";
				output += item + "\">" + item + "</li>";
			});
			$("#style").html(output);
			output = "";
			$.each(responseData.environment, function(i, item){
				output += "<li class=\"environment\" id=\"";
				output += item + "\">" + item + "</li>";
			});
			$("#environment").html(output);
		},
		error: function(msg) {
			alert("There was a problem: " + msg.status + " " + msg.statusText);
		}
	});
	$("#stretch").click(function(){
		if (check_slide) {
			check_slide = false;
			$("#main_part").animate({"left": '+=260px'}, "slow");
			$("#stretch").animate({"left": '+=260px'}, "slow");
			$("#arrow").text("<");

		}
		else {
			check_slide = true;
			$("#main_part").animate({"left": '-=260px'}, "slow");
			$("#stretch").animate({"left": '-=260px'}, "slow");
			$("#arrow").text(">");
		}
	});
	$("#category_year").click(function(){
		$("#year").slideToggle("slow");
	});
	$("#category_language").click(function(){
		$("#language").slideToggle("slow");
	});
	$("#category_style").click(function(){
		$("#style").slideToggle("slow");
	});
	$("#category_environment").click(function(){
		$("#environment").slideToggle("slow");
	});
	$("#year2000-2004").click(function(){
		$("#year2000").slideToggle("slow");
	});
	$("#year2005-2009").click(function(){
		$("#year2005").slideToggle("slow");
	});
	$("#year2010-2014").click(function(){
		$("#year2010").slideToggle("slow");
	});
	$("#year2015-2019").click(function(){
		$("#year2015").slideToggle("slow");
	});
	$("#year2020-2024").click(function(){
		$("#year2020").slideToggle("slow");
	});
});