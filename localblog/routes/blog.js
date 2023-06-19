const express = require('express');
const router = express.Router();
const blogHandler = require('../handlers/blog.js');

router.get('/', (req, res)=>{ res.send('상품정보 도메인')});
router.get('/blog_list', blogHandler.blogList);
router.get('/blog_list/:blogNum', blogHandler.blogNum)
router.get('/post_list', blogHandler.postList);
router.get('/post_registration', blogHandler.registration);
router.post('/post_registrationProcess', blogHandler.registrationProcess);
router.get('/post/:postNum', blogHandler.postNum);

module.exports = router;


