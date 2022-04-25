let judge_blank = false;
let judge_post = false;
let judge_border = false;
let border_id = "";
if (judge_blank) {
	alert('Comment may not be blank');
	judge_blank = false;
}
if (judge_post) {
	alert('Comment posted!');
	judge_blank = false;
}