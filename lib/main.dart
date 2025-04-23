import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView( // Wrap with SingleChildScrollView
            child: Column(
              children: [
                // Profile Section
                const ProfileSection(),
                
                // Search Bar
                const SearchBarWidget(),
                
                // Top Categories
                const TopCategoriesSection(),
                
                // Top Courses
                const TopCoursesSection(),
                
                // Top Instructors
                const TopInstructorsSection(),
                
                // Add other content below
              ],
            ),
          ),
        ),
        
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Grid',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/imgs/pfp.png'),
          ),
          
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hello,',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                'OmarAmrEid',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none, size: 28),
            onPressed: () {} ,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

// Search Bar Widget
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {} ,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
        ),
      ),
    );
  }
}

// Top Categories Section
class TopCategoriesSection extends StatelessWidget {
  const TopCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _CategoryCard(
                  icon: Icons.stars,
                  label: 'Astrology',
                  count: '11 Courses',
                ),
                _CategoryCard(
                  icon: Icons.code,
                  label: 'Programming',
                  count: '24 Courses',
                ),
                _CategoryCard(
                  icon: Icons.design_services,
                  label: 'Design',
                  count: '18 Courses',
                ),
                _CategoryCard(
                  icon: Icons.business,
                  label: 'Business',
                  count: '15 Courses',
                ),
                _CategoryCard(
                  icon: Icons.camera,
                  label: 'Photography',
                  count: '9 Courses',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Category Card Widget
class _CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String count;

  const _CategoryCard({
    required this.icon,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.blueAccent, size: 40),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(count),
        ],
      ),
    );
  }
}

// Top Courses Section
class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {} ,
                child: const Text(
                  'See All',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _CourseCard(
                  image: 'assets/imgs/design.jpeg',
                  title: 'Beginner\'s Guide to Design',
                  instructor: 'Ronald Richards',
                  rating: 4.8,
                  ratingCount: 1200,
                  duration: '22 Total Hours',
                  lectures: '155 Lectures',
                  level: 'Beginner',
                  price: '\$149.9',
                ),
                _CourseCard(
                  image: 'assets/imgs/design.jpeg',
                  title: 'Beginner\'s Guide to Design',
                  instructor: 'Ronald Richards',
                  rating: 4.8,
                  ratingCount: 1200,
                  duration: '22 Total Hours',
                  lectures: '155 Lectures',
                  level: 'Beginner',
                  price: '\$149.9',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Course Card Widget
class _CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String instructor;
  final double rating;
  final int ratingCount;
  final String duration;
  final String lectures;
  final String level;
  final String price;

  const _CourseCard({
    required this.image,
    required this.title,
    required this.instructor,
    required this.rating,
    required this.ratingCount,
    required this.duration,
    required this.lectures,
    required this.level,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('By $instructor'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  Icon(Icons.star, color: rating >= 4.5 ? Colors.amber : Colors.amber.withOpacity(0.5), size: 16),
                  const SizedBox(width: 5),
                  Text('($ratingCount Ratings)'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '$duration. $lectures. $level',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                price,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Top Instructors Section
class TopInstructorsSection extends StatelessWidget {
  const TopInstructorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Instructors',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 205,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _InstructorCard(
                  image: 'assets/imgs/inst.jpeg',
                  name: 'Ronald Richards',
                  title: 'UI/UX Designer',
                  rating: 4.9,
                  students: 2400,
                ),
                _InstructorCard(
                  image: 'assets/imgs/inst.jpeg',
                  name: 'Ronald Richards',
                  title: 'UI/UX Designer',
                  rating: 4.9,
                  students: 2400,
                ),
                _InstructorCard(
                  image: 'assets/imgs/inst.jpeg',
                  name: 'Ronald Richards',
                  title: 'UI/UX Designer',
                  rating: 4.9,
                  students: 2400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Instructor Card Widget
class _InstructorCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final double rating;
  final int students;

  const _InstructorCard({
    required this.image,
    required this.name,
    required this.title,
    required this.rating,
    required this.students,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(title),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(rating.toString()),
                    ],
                  ),
                  Text('$students Students'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}