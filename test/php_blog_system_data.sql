-- Fake Data for phpblog1 Database
-- 25 rows for each table: categories, posts, comments

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------
-- Inserting 25 categories
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Technology', 'Latest news and updates about technology, gadgets, and innovations', '2025-01-01 10:00:00'),
(2, 'Travel', 'Travel guides, tips, and destination reviews from around the world', '2025-01-02 11:15:00'),
(3, 'Food & Cooking', 'Delicious recipes, cooking tips, and food culture exploration', '2025-01-03 12:30:00'),
(4, 'Health & Fitness', 'Wellness advice, workout routines, and healthy living tips', '2025-01-04 13:45:00'),
(5, 'Fashion', 'Latest fashion trends, style guides, and wardrobe inspiration', '2025-01-05 14:00:00'),
(6, 'Sports', 'Sports news, match analysis, and athlete profiles', '2025-01-06 15:20:00'),
(7, 'Entertainment', 'Movie reviews, celebrity news, and entertainment industry updates', '2025-01-07 16:35:00'),
(8, 'Business', 'Business strategies, entrepreneurship, and market analysis', '2025-01-08 09:10:00'),
(9, 'Education', 'Learning resources, study tips, and educational content', '2025-01-09 10:25:00'),
(10, 'Science', 'Scientific discoveries, research findings, and science news', '2025-01-10 11:40:00'),
(11, 'Art & Design', 'Artistic creations, design inspiration, and creative projects', '2025-01-11 12:55:00'),
(12, 'Music', 'Music reviews, artist interviews, and industry news', '2025-01-12 14:10:00'),
(13, 'Photography', 'Photography tips, techniques, and stunning photo galleries', '2025-01-13 15:25:00'),
(14, 'Gaming', 'Video game reviews, gaming news, and esports coverage', '2025-01-14 16:40:00'),
(15, 'Books', 'Book reviews, reading recommendations, and literary discussions', '2025-01-15 09:55:00'),
(16, 'Home & Garden', 'Home improvement ideas, gardening tips, and interior design', '2025-01-16 10:05:00'),
(17, 'Automotive', 'Car reviews, automotive news, and driving tips', '2025-01-17 11:20:00'),
(18, 'Finance', 'Personal finance advice, investment tips, and money management', '2025-01-18 12:35:00'),
(19, 'Lifestyle', 'Life hacks, productivity tips, and lifestyle inspiration', '2025-01-19 13:50:00'),
(20, 'Nature', 'Nature photography, environmental news, and wildlife stories', '2025-01-20 14:05:00'),
(21, 'History', 'Historical events, ancient civilizations, and historical analysis', '2025-01-21 15:20:00'),
(22, 'Philosophy', 'Philosophical discussions, thought experiments, and wisdom', '2025-01-22 16:35:00'),
(23, 'DIY Projects', 'Do-it-yourself tutorials, craft ideas, and project guides', '2025-01-23 09:50:00'),
(24, 'Pets', 'Pet care tips, animal stories, and pet product reviews', '2025-01-24 10:15:00'),
(25, 'Motivation', 'Inspirational stories, motivational quotes, and personal development', '2025-01-25 11:30:00');

-- --------------------------------------------------------
-- Inserting 25 posts
-- --------------------------------------------------------

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `category_id`, `created_at`) VALUES
(1, 'The Future of Artificial Intelligence', 'Artificial intelligence is rapidly transforming our world. From machine learning algorithms to neural networks, AI technology continues to evolve and impact various industries including healthcare, finance, and transportation. This comprehensive guide explores the latest developments and what to expect in the coming years.', 1001, 1, '2025-01-26 10:00:00'),
(2, 'Top 10 Destinations to Visit in 2025', 'Planning your next vacation? Discover these amazing destinations that should be on your travel bucket list. From tropical paradises to historic cities, we cover the best places to visit this year with insider tips and must-see attractions.', 1002, 2, '2025-01-27 11:15:00'),
(3, 'Easy Homemade Pasta Recipe', 'Learn how to make delicious fresh pasta from scratch in your own kitchen. This step-by-step recipe includes all the tips and tricks you need to create perfect pasta every time. No special equipment required!', 1003, 3, '2025-01-28 12:30:00'),
(4, '5 Morning Exercises for Better Health', 'Start your day right with these simple morning exercises that boost energy and improve overall health. Each routine takes just 10 minutes and can be done at home without any equipment.', 1004, 4, '2025-01-29 13:45:00'),
(5, 'Spring Fashion Trends 2025', 'Get ready for spring with the latest fashion trends. From bold colors to sustainable fashion choices, discover what will be in style this season and how to incorporate these trends into your wardrobe.', 1005, 5, '2025-01-30 14:00:00'),
(6, 'Championship Game Analysis', 'An in-depth analysis of the recent championship game, breaking down key plays, strategies, and player performances. Learn what made this game memorable and what it means for the future of the sport.', 1006, 6, '2025-02-01 15:20:00'),
(7, 'Best Movies of the Year So Far', 'Our curated list of the best movies released this year. From blockbusters to indie films, we review the top picks that are worth watching and discuss what makes them stand out.', 1007, 7, '2025-02-02 16:35:00'),
(8, 'Starting Your Own Business: A Complete Guide', 'Thinking about becoming an entrepreneur? This comprehensive guide covers everything you need to know about starting your own business, from creating a business plan to securing funding and marketing your products.', 1008, 8, '2025-02-03 09:10:00'),
(9, 'Effective Study Techniques for Students', 'Maximize your learning potential with these proven study techniques. Whether you are preparing for exams or learning new skills, these methods will help you retain information better and study more efficiently.', 1009, 9, '2025-02-04 10:25:00'),
(10, 'Breakthrough Discovery in Quantum Physics', 'Scientists have made a groundbreaking discovery that could revolutionize our understanding of quantum mechanics. This article explains the findings and their potential implications for technology and science.', 1010, 10, '2025-02-05 11:40:00'),
(11, 'Modern Art Movement Explained', 'Explore the evolution of modern art and understand the key movements that shaped contemporary art. From impressionism to abstract expressionism, learn about the artists and ideas that defined each era.', 1011, 11, '2025-02-06 12:55:00'),
(12, 'Album Review: Latest Release', 'A detailed review of the newest album release, analyzing the musical composition, lyrics, and overall production quality. Discover if this album is worth adding to your playlist.', 1012, 12, '2025-02-07 14:10:00'),
(13, 'Photography Tips for Beginners', 'Master the basics of photography with these essential tips for beginners. Learn about composition, lighting, camera settings, and techniques that will help you take stunning photos right away.', 1013, 13, '2025-02-08 15:25:00'),
(14, 'Upcoming Game Releases to Watch', 'Get excited about the most anticipated video game releases of the year. From action-packed adventures to strategic simulations, find out which games are worth pre-ordering.', 1014, 14, '2025-02-09 16:40:00'),
(15, 'Must-Read Books This Month', 'Our monthly selection of books that you should add to your reading list. From fiction to non-fiction, these recommendations cover various genres and are perfect for any book lover.', 1015, 15, '2025-02-10 09:55:00'),
(16, 'Kitchen Renovation Ideas on a Budget', 'Transform your kitchen without breaking the bank. These creative renovation ideas will give your kitchen a fresh new look while staying within your budget. DIY tips included!', 1016, 16, '2025-02-11 10:05:00'),
(17, 'Electric Cars: The Future of Transportation', 'Electric vehicles are becoming increasingly popular. Learn about the latest models, charging infrastructure, and environmental benefits of making the switch to electric cars.', 1017, 17, '2025-02-12 11:20:00'),
(18, 'Investment Strategies for Beginners', 'Start building wealth with these beginner-friendly investment strategies. Learn about stocks, bonds, mutual funds, and how to create a diversified portfolio that matches your financial goals.', 1018, 18, '2025-02-13 12:35:00'),
(19, 'Productivity Hacks for Remote Workers', 'Working from home comes with unique challenges. Discover effective productivity hacks that will help you stay focused, manage your time better, and maintain work-life balance while working remotely.', 1019, 19, '2025-02-14 13:50:00'),
(20, 'Wildlife Photography in National Parks', 'Capture stunning wildlife photos during your next national park visit. This guide covers the best locations, timing, equipment, and techniques for photographing animals in their natural habitat.', 1020, 20, '2025-02-15 14:05:00'),
(21, 'Ancient Civilizations: Lost Cities', 'Journey through history to discover ancient civilizations and their lost cities. Learn about archaeological discoveries, cultural achievements, and the mysteries that still surround these ancient societies.', 1021, 21, '2025-02-16 15:20:00'),
(22, 'Philosophy of Happiness', 'What does it mean to live a happy life? Explore different philosophical perspectives on happiness, from ancient wisdom to modern theories, and discover practical ways to cultivate joy in your daily life.', 1022, 22, '2025-02-17 16:35:00'),
(23, 'DIY Home Decor Projects', 'Add personal touches to your home with these creative DIY decor projects. From wall art to furniture makeovers, these projects are fun, affordable, and will make your space uniquely yours.', 1023, 23, '2025-02-18 09:50:00'),
(24, 'Caring for Your New Puppy', 'Bringing home a new puppy? This comprehensive guide covers everything you need to know about puppy care, from feeding and training to health and socialization tips for a happy, healthy dog.', 1024, 24, '2025-02-19 10:15:00'),
(25, 'Overcoming Challenges: Success Stories', 'Be inspired by real stories of people who overcame significant challenges to achieve their dreams. These motivational stories prove that with determination and resilience, anything is possible.', 1025, 25, '2025-02-20 11:30:00');

-- --------------------------------------------------------
-- Inserting 25 comments
-- --------------------------------------------------------

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `created_at`) VALUES
(1, 'John Smith', 'Great article! AI is definitely changing everything. Looking forward to more updates on this topic.', 1, '2025-02-21 10:15:00'),
(2, 'Sarah Johnson', 'I visited three of these destinations last year and they were amazing! Thanks for the recommendations.', 2, '2025-02-22 11:30:00'),
(3, 'Mike Chen', 'Tried this recipe last weekend and it turned out perfect! My family loved it. Will definitely make it again.', 3, '2025-02-23 12:45:00'),
(4, 'Emily Davis', 'These exercises are so easy to follow. I have been doing them every morning for a week and already feel more energetic!', 4, '2025-02-24 13:00:00'),
(5, 'David Wilson', 'Love the fashion trends this season. The color palette is beautiful and very wearable.', 5, '2025-02-25 14:15:00'),
(6, 'Lisa Anderson', 'Excellent analysis! You really broke down the key moments that made this game special. Great read!', 6, '2025-02-26 15:30:00'),
(7, 'Robert Taylor', 'I have seen most of these movies and agree with your picks. The cinematography in some of them is outstanding.', 7, '2025-02-27 16:45:00'),
(8, 'Jennifer Brown', 'This guide is exactly what I needed. Starting my business next month and this information is invaluable. Thank you!', 8, '2025-02-28 09:00:00'),
(9, 'Michael Garcia', 'These study techniques really work! My grades have improved significantly since I started using them.', 9, '2025-03-01 10:15:00'),
(10, 'Amanda Martinez', 'Fascinating discovery! It is amazing how much we are still learning about the universe. Great article!', 10, '2025-03-02 11:30:00'),
(11, 'Christopher Lee', 'Modern art has always intrigued me. This article helped me understand the different movements better. Well written!', 11, '2025-03-03 12:45:00'),
(12, 'Jessica White', 'I have been listening to this album on repeat! Your review captures exactly how I feel about it. Great job!', 12, '2025-03-04 13:00:00'),
(13, 'Daniel Harris', 'As a photography beginner, these tips are gold! I have already noticed improvement in my photos. Thank you!', 13, '2025-03-05 14:15:00'),
(14, 'Michelle Clark', 'Cannot wait for these game releases! I have been following the development of a few of them. Exciting times ahead!', 14, '2025-03-06 15:30:00'),
(15, 'Andrew Lewis', 'Added three of these books to my reading list. Thanks for the recommendations! Always looking for good reads.', 15, '2025-03-07 16:45:00'),
(16, 'Nicole Walker', 'These renovation ideas are perfect for my budget! I am planning to start with the backsplash project this weekend.', 16, '2025-03-08 09:00:00'),
(17, 'Kevin Hall', 'Thinking about switching to an electric car. This article answered many of my questions. Very informative!', 17, '2025-03-09 10:15:00'),
(18, 'Stephanie Young', 'Finally, investment advice I can understand! Starting my investment journey next month. Thanks for the guidance!', 18, '2025-03-10 11:30:00'),
(19, 'Ryan King', 'These productivity hacks are game-changers! Working from home has been much easier since I implemented these tips.', 19, '2025-03-11 12:45:00'),
(20, 'Lauren Wright', 'Planning a trip to Yellowstone next month. These photography tips will come in handy. Beautiful article!', 20, '2025-03-12 13:00:00'),
(21, 'Brandon Lopez', 'History has always been my passion. This article about lost cities is fascinating. Would love to see more content like this!', 21, '2025-03-13 14:15:00'),
(22, 'Rachel Hill', 'Philosophy of happiness is such an important topic. Your perspective really made me think. Beautifully written!', 22, '2025-03-14 15:30:00'),
(23, 'Justin Scott', 'Love DIY projects! Already completed two of these and they look great. My home is starting to feel more personalized.', 23, '2025-03-15 16:45:00'),
(24, 'Megan Green', 'Just got a new golden retriever puppy! This guide is so helpful. Thank you for all the practical advice!', 24, '2025-03-16 09:00:00'),
(25, 'Tyler Adams', 'These success stories are truly inspiring! They remind me that perseverance pays off. Thank you for sharing!', 25, '2025-03-17 10:15:00');

COMMIT;

