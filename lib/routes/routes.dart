import 'package:estudio/screen/quiz_result_page/quiz_result_page.dart';
import 'package:flutter/material.dart';
import '../screen/flashcard_mcq_page/flashcard_flip_page.dart';
import '../screen/flashcard_mcq_page/flashcard_mcq_page.dart';
import '../screen/quiz_question_page/quiz_image_question_page.dart';
import '../screen/quiz_result_page/badge_earned_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/flashcards/mcq': (_) => const FlashcardMcqPage(),
  '/flashcards/flip': (_) => const FlashcardFlipPage(),
  '/quiz/result': (_) => const QuizResultPage(),
  '/badge': (_) => const BadgePage(),
  '/quiz_i': (_) => const QuizImageQuestionPage(),

};
