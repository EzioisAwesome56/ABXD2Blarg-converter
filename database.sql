/* 
	ABXD2BLARG upgrade dataset
	Edited version of BlargBoard 1.2's dataset
	Most of the crap that was here isnt needed, so we remove it
*/

INSERT INTO `{$dbpref}usergroups` (`id`, `name`, `title`, `rank`, `type`, `display`, `color_male`, `color_female`, `color_unspec`) VALUES
(-1, 'Banned users', 'Banned', -1000, 0, 0, '#888888', '#888888', '#888888'),
(0, 'Normal users', 'Normal user', 0, 0, 0, '#97ACEF', '#F185C9', '#7C60B0'),
(1, 'Local moderators', 'Local moderator', 100, 0, 1, '#D8E8FE', '#FFB3F3', '#EEB9BA'),
(2, 'Global moderators', 'Global moderator', 200, 0, 1, '#AFFABE', '#C762F2', '#47B53C'),
(3, 'Administrators', 'Administrator', 300, 0, 1, '#FFEA95', '#C53A9E', '#F0C413'),
(4, 'Owners', 'Owner', 1000, 0, 1, '#5555FF', '#FF5588', '#FF55FF');

INSERT INTO `{$dbpref}permissions` (`applyto`, `id`, `perm`, `arg`, `value`) VALUES
(0, -1, 'admin.adminusercomments', 0, -1),
(0, -1, 'admin.banusers', 0, -1),
(0, -1, 'admin.editforums', 0, -1),
(0, -1, 'admin.editgroups', 0, -1),
(0, -1, 'admin.editsettings', 0, -1),
(0, -1, 'admin.editsmilies', 0, -1),
(0, -1, 'admin.editusers', 0, -1),
(0, -1, 'admin.ipsearch', 0, -1),
(0, -1, 'admin.manageipbans', 0, -1),
(0, -1, 'admin.viewadminnotices', 0, -1),
(0, -1, 'admin.viewadminpanel', 0, -1),
(0, -1, 'admin.viewallranks', 0, -1),
(0, -1, 'admin.viewips', 0, -1),
(0, -1, 'admin.viewlog', 0, -1),
(0, -1, 'admin.viewpms', 0, -1),
(0, -1, 'admin.viewstaffpms', 0, -1),
(0, -1, 'forum.postreplies', 0, -1),
(0, -1, 'forum.postthreads', 0, -1),
(0, -1, 'forum.viewforum', 0, 1),
(0, -1, 'mod.closethreads', 0, -1),
(0, -1, 'mod.deleteposts', 0, -1),
(0, -1, 'mod.deletethreads', 0, -1),
(0, -1, 'mod.editposts', 0, -1),
(0, -1, 'mod.movethreads', 0, -1),
(0, -1, 'mod.renamethreads', 0, -1),
(0, -1, 'mod.stickthreads', 0, -1),
(0, -1, 'mod.trashthreads', 0, -1),
(0, -1, 'user.deleteownposts', 0, -1),
(0, -1, 'user.deleteownusercomments', 0, -1),
(0, -1, 'user.doublepost', 0, -1),
(0, -1, 'user.editavatars', 0, -1),
(0, -1, 'user.editbio', 0, -1),
(0, -1, 'user.editdisplayname', 0, -1),
(0, -1, 'user.editownposts', 0, -1),
(0, -1, 'user.editpostlayout', 0, -1),
(0, -1, 'user.editprofile', 0, -1),
(0, -1, 'user.edittitle', 0, -1),
(0, -1, 'user.havetitle', 0, -1),
(0, -1, 'user.postusercomments', 0, -1),
(0, -1, 'user.renameownthreads', 0, -1),
(0, -1, 'user.reportposts', 0, -1),
(0, -1, 'user.sendpms', 0, 1),
(0, -1, 'user.viewhiddenforums', 0, -1),
(0, -1, 'user.votepolls', 0, -1),
(0, -1, 'user.voteposts', 0, -1),
(0, 0, 'admin.adminusercomments', 0, -1),
(0, 0, 'admin.banusers', 0, -1),
(0, 0, 'admin.editforums', 0, -1),
(0, 0, 'admin.editgroups', 0, -1),
(0, 0, 'admin.editsettings', 0, -1),
(0, 0, 'admin.editsmilies', 0, -1),
(0, 0, 'admin.editusers', 0, -1),
(0, 0, 'admin.ipsearch', 0, -1),
(0, 0, 'admin.manageipbans', 0, -1),
(0, 0, 'admin.viewadminnotices', 0, -1),
(0, 0, 'admin.viewadminpanel', 0, -1),
(0, 0, 'admin.viewallranks', 0, -1),
(0, 0, 'admin.viewips', 0, -1),
(0, 0, 'admin.viewlog', 0, -1),
(0, 0, 'admin.viewpms', 0, -1),
(0, 0, 'admin.viewstaffpms', 0, -1),
(0, 0, 'forum.postreplies', 0, 1),
(0, 0, 'forum.postthreads', 0, 1),
(0, 0, 'forum.viewforum', 0, 1),
(0, 0, 'mod.closethreads', 0, -1),
(0, 0, 'mod.deleteposts', 0, -1),
(0, 0, 'mod.deletethreads', 0, -1),
(0, 0, 'mod.editposts', 0, -1),
(0, 0, 'mod.movethreads', 0, -1),
(0, 0, 'mod.renamethreads', 0, -1),
(0, 0, 'mod.stickthreads', 0, -1),
(0, 0, 'mod.trashthreads', 0, -1),
(0, 0, 'user.deleteownposts', 0, 1),
(0, 0, 'user.deleteownusercomments', 0, 1),
(0, 0, 'user.doublepost', 0, -1),
(0, 0, 'user.editavatars', 0, 1),
(0, 0, 'user.editbio', 0, 1),
(0, 0, 'user.editdisplayname', 0, 1),
(0, 0, 'user.editownposts', 0, 1),
(0, 0, 'user.editpostlayout', 0, 1),
(0, 0, 'user.editprofile', 0, 1),
(0, 0, 'user.edittitle', 0, 1),
(0, 0, 'user.havetitle', 0, -1),
(0, 0, 'user.postusercomments', 0, 1),
(0, 0, 'user.renameownthreads', 0, 1),
(0, 0, 'user.reportposts', 0, 1),
(0, 0, 'user.sendpms', 0, 1),
(0, 0, 'user.viewhiddenforums', 0, -1),
(0, 0, 'user.votepolls', 0, 1),
(0, 0, 'user.voteposts', 0, 1),
(0, 1, 'admin.adminusercomments', 0, -1),
(0, 1, 'admin.banusers', 0, -1),
(0, 1, 'admin.editforums', 0, -1),
(0, 1, 'admin.editgroups', 0, -1),
(0, 1, 'admin.editsettings', 0, -1),
(0, 1, 'admin.editsmilies', 0, -1),
(0, 1, 'admin.editusers', 0, -1),
(0, 1, 'admin.ipsearch', 0, -1),
(0, 1, 'admin.manageipbans', 0, -1),
(0, 1, 'admin.viewadminnotices', 0, -1),
(0, 1, 'admin.viewadminpanel', 0, -1),
(0, 1, 'admin.viewallranks', 0, -1),
(0, 1, 'admin.viewips', 0, -1),
(0, 1, 'admin.viewlog', 0, -1),
(0, 1, 'admin.viewpms', 0, -1),
(0, 1, 'admin.viewstaffpms', 0, -1),
(0, 1, 'forum.postreplies', 0, 1),
(0, 1, 'forum.postthreads', 0, 1),
(0, 1, 'forum.viewforum', 0, 1),
(0, 1, 'user.deleteownposts', 0, 1),
(0, 1, 'user.deleteownusercomments', 0, 1),
(0, 1, 'user.doublepost', 0, -1),
(0, 1, 'user.editavatars', 0, 1),
(0, 1, 'user.editbio', 0, 1),
(0, 1, 'user.editdisplayname', 0, 1),
(0, 1, 'user.editownposts', 0, 1),
(0, 1, 'user.editpostlayout', 0, 1),
(0, 1, 'user.editprofile', 0, 1),
(0, 1, 'user.edittitle', 0, 1),
(0, 1, 'user.havetitle', 0, 1),
(0, 1, 'user.postusercomments', 0, 1),
(0, 1, 'user.renameownthreads', 0, 1),
(0, 1, 'user.reportposts', 0, 1),
(0, 1, 'user.sendpms', 0, 1),
(0, 1, 'user.viewhiddenforums', 0, -1),
(0, 1, 'user.votepolls', 0, 1),
(0, 1, 'user.voteposts', 0, 1),
(0, 2, 'admin.adminusercomments', 0, -1),
(0, 2, 'admin.banusers', 0, 1),
(0, 2, 'admin.editforums', 0, -1),
(0, 2, 'admin.editgroups', 0, -1),
(0, 2, 'admin.editsettings', 0, -1),
(0, 2, 'admin.editsmilies', 0, -1),
(0, 2, 'admin.editusers', 0, -1),
(0, 2, 'admin.ipsearch', 0, -1),
(0, 2, 'admin.manageipbans', 0, -1),
(0, 2, 'admin.viewadminnotices', 0, -1),
(0, 2, 'admin.viewadminpanel', 0, -1),
(0, 2, 'admin.viewallranks', 0, -1),
(0, 2, 'admin.viewips', 0, 1),
(0, 2, 'admin.viewlog', 0, -1),
(0, 2, 'admin.viewpms', 0, -1),
(0, 2, 'admin.viewstaffpms', 0, 1),
(0, 2, 'forum.postreplies', 0, 1),
(0, 2, 'forum.postthreads', 0, 1),
(0, 2, 'forum.viewforum', 0, 1),
(0, 2, 'mod.closethreads', 0, 1),
(0, 2, 'mod.deleteposts', 0, 1),
(0, 2, 'mod.deletethreads', 0, 1),
(0, 2, 'mod.editposts', 0, 1),
(0, 2, 'mod.movethreads', 0, 1),
(0, 2, 'mod.renamethreads', 0, 1),
(0, 2, 'mod.stickthreads', 0, 1),
(0, 2, 'mod.trashthreads', 0, 1),
(0, 2, 'user.deleteownposts', 0, 1),
(0, 2, 'user.deleteownusercomments', 0, 1),
(0, 2, 'user.doublepost', 0, -1),
(0, 2, 'user.editavatars', 0, 1),
(0, 2, 'user.editbio', 0, 1),
(0, 2, 'user.editdisplayname', 0, 1),
(0, 2, 'user.editownposts', 0, 1),
(0, 2, 'user.editpostlayout', 0, 1),
(0, 2, 'user.editprofile', 0, 1),
(0, 2, 'user.edittitle', 0, 1),
(0, 2, 'user.havetitle', 0, 1),
(0, 2, 'user.postusercomments', 0, 1),
(0, 2, 'user.renameownthreads', 0, 1),
(0, 2, 'user.reportposts', 0, 1),
(0, 2, 'user.sendpms', 0, 1),
(0, 2, 'user.viewhiddenforums', 0, 1),
(0, 2, 'user.votepolls', 0, 1),
(0, 2, 'user.voteposts', 0, 1),
(0, 3, 'admin.adminusercomments', 0, 1),
(0, 3, 'admin.banusers', 0, 1),
(0, 3, 'admin.editforums', 0, 1),
(0, 3, 'admin.editgroups', 0, 1),
(0, 3, 'admin.editsettings', 0, 1),
(0, 3, 'admin.editsmilies', 0, 1),
(0, 3, 'admin.editusers', 0, 1),
(0, 3, 'admin.ipsearch', 0, 1),
(0, 3, 'admin.manageipbans', 0, 1),
(0, 3, 'admin.viewadminnotices', 0, 1),
(0, 3, 'admin.viewadminpanel', 0, 1),
(0, 3, 'admin.viewallranks', 0, 1),
(0, 3, 'admin.viewips', 0, 1),
(0, 3, 'admin.viewlog', 0, 1),
(0, 3, 'admin.viewpms', 0, 1),
(0, 3, 'admin.viewstaffpms', 0, 1),
(0, 3, 'forum.postreplies', 0, 1),
(0, 3, 'forum.postthreads', 0, 1),
(0, 3, 'forum.viewforum', 0, 1),
(0, 3, 'mod.closethreads', 0, 1),
(0, 3, 'mod.deleteposts', 0, 1),
(0, 3, 'mod.deletethreads', 0, 1),
(0, 3, 'mod.editposts', 0, 1),
(0, 3, 'mod.movethreads', 0, 1),
(0, 3, 'mod.renamethreads', 0, 1),
(0, 3, 'mod.stickthreads', 0, 1),
(0, 3, 'mod.trashthreads', 0, 1),
(0, 3, 'user.deleteownposts', 0, 1),
(0, 3, 'user.deleteownusercomments', 0, 1),
(0, 3, 'user.doublepost', 0, 1),
(0, 3, 'user.editavatars', 0, 1),
(0, 3, 'user.editbio', 0, 1),
(0, 3, 'user.editdisplayname', 0, 1),
(0, 3, 'user.editnamecolor', 0, 1),
(0, 3, 'user.editownposts', 0, 1),
(0, 3, 'user.editpostlayout', 0, 1),
(0, 3, 'user.editprofile', 0, 1),
(0, 3, 'user.edittitle', 0, 1),
(0, 3, 'user.havetitle', 0, 1),
(0, 3, 'user.postusercomments', 0, 1),
(0, 3, 'user.renameownthreads', 0, 1),
(0, 3, 'user.reportposts', 0, 1),
(0, 3, 'user.sendpms', 0, 1),
(0, 3, 'user.viewhiddenforums', 0, 1),
(0, 3, 'user.votepolls', 0, 1),
(0, 3, 'user.voteposts', 0, 1),
(0, 4, 'admin.adminusercomments', 0, 1),
(0, 4, 'admin.banusers', 0, 1),
(0, 4, 'admin.editforums', 0, 1),
(0, 4, 'admin.editgroups', 0, 1),
(0, 4, 'admin.editsettings', 0, 1),
(0, 4, 'admin.editsmilies', 0, 1),
(0, 4, 'admin.editusers', 0, 1),
(0, 4, 'admin.ipsearch', 0, 1),
(0, 4, 'admin.manageipbans', 0, 1),
(0, 4, 'admin.viewadminnotices', 0, 1),
(0, 4, 'admin.viewadminpanel', 0, 1),
(0, 4, 'admin.viewallranks', 0, 1),
(0, 4, 'admin.viewips', 0, 1),
(0, 4, 'admin.viewlog', 0, 1),
(0, 4, 'admin.viewpms', 0, 1),
(0, 4, 'admin.viewstaffpms', 0, 1),
(0, 4, 'forum.postreplies', 0, 1),
(0, 4, 'forum.postthreads', 0, 1),
(0, 4, 'forum.viewforum', 0, 1),
(0, 4, 'mod.closethreads', 0, 1),
(0, 4, 'mod.deleteposts', 0, 1),
(0, 4, 'mod.deletethreads', 0, 1),
(0, 4, 'mod.editposts', 0, 1),
(0, 4, 'mod.movethreads', 0, 1),
(0, 4, 'mod.renamethreads', 0, 1),
(0, 4, 'mod.stickthreads', 0, 1),
(0, 4, 'mod.trashthreads', 0, 1),
(0, 4, 'user.deleteownposts', 0, 1),
(0, 4, 'user.deleteownusercomments', 0, 1),
(0, 4, 'user.doublepost', 0, 1),
(0, 4, 'user.editavatars', 0, 1),
(0, 4, 'user.editbio', 0, 1),
(0, 4, 'user.editdisplayname', 0, 1),
(0, 4, 'user.editnamecolor', 0, 1),
(0, 4, 'user.editownposts', 0, 1),
(0, 4, 'user.editpostlayout', 0, 1),
(0, 4, 'user.editprofile', 0, 1),
(0, 4, 'user.edittitle', 0, 1),
(0, 4, 'user.havetitle', 0, 1),
(0, 4, 'user.postusercomments', 0, 1),
(0, 4, 'user.renameownthreads', 0, 1),
(0, 4, 'user.reportposts', 0, 1),
(0, 4, 'user.sendpms', 0, 1),
(0, 4, 'user.viewhiddenforums', 0, 1),
(0, 4, 'user.votepolls', 0, 1),
(0, 4, 'user.voteposts', 0, 1);