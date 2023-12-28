### Meal and Drink Decision Expert System

## Introduction
This Prolog code represents an expert system designed to assist users in deciding what meal to cook based what they have and what drink to have. The system uses a set of predefined facts and recipes to make suggestions based on user input.

## Code Structure
The code consists of two main sections: meal-related predicates and drink-related predicates.

### Meals
The `is_true/1` predicate determines the truth value of a given question by checking whether it is a known fact or fiction. If it's neither, the system prompts the user to answer the question and updates its knowledge base accordingly.

The `cook/1` predicates represent different meal options, each relying on a set of ingredient-related questions (handled by `is_true/1`). There are also corresponding `recipe/2` facts providing instructions for each meal.

### Drinks
Similar to meals, the `drink/1` predicates determine suitable drinks based on user preferences. The system asks questions related to flavor, carbonation, sweetness, etc., to narrow down the options.

## Usage
To use the expert system, run the `begin/0` predicate. The system will prompt you to answer whether you want to cook a meal or have a drink. Based on your choice, it will guide you through a series of questions to suggest a meal or a drink.

### Commands
- `begin.`: Initiates the system and prompts the user.
- `run(yes).`: Starts the decision-making process.
- `run(no).`: Exits the system.
- `undo.`: Undoes the previous decision.
- Various meal and drink queries.

## Example
1. To start the system: `?- begin.`

2. The system will ask if you want to cook a meal or have a drink. Respond with `meal.` or `drink.`.

3. Follow the prompts and answer with `yes.` or `no.` until the system suggests a meal or drink.

4. If a meal is suggested, you can choose to see the recipe. If a drink is suggested, the system will provide the recommendation.

5. You can use `undo.` to go back to the previous step and make different choices.

Enjoy using this expert system to make meal and drink decisions!


## How to Run

1. Ensure you have a Prolog interpreter installed (e.g., SWI-Prolog).
2. Clone the repository:

    ```bash
    git clone https://github.com/kawther1010/cookbetter.git
    cd cookbetter
    ```

3. Load the Prolog file:

    ```bash
    swipl
    consult('cookbetter.pl').
    ```
## Contact Information

For any questions or clarifications, please contact NFIDSA HALIMA at nfidsahalima@gmail.com or M'ziane houda at Houdahad545@gmail.com