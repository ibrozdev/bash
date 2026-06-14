#!/users/bin/env bash

# Create a simple self-checkout system.
# Prompt for the prices and quantities of three items. Calculate the subtotal of the items
# Then calculate the tax using a tax rate of 5.5%. Print out the line items with the quantity and total, and then print out the subtotal, tax amount, and total

read -p "Enter the  price of item 1: " ITEM_1_PRICE;
read -p "Enter the quantity of item 1: " ITEM_1_QTY;

echo "";

read -p "Enter the price of item 2: " ITEM_2_PRICE;
read -p "Enter the quantity of item 2:" ITEM_2_QTY;

echo "";


read -p "Enter the price of item 3: " ITEM_3_PRICE;
read -p "Enter the quantity of item 3: " ITEM_3_QTY;

echo "";

ITEM_1=$(( ITEM_1_PRICE * ITEM_1_QTY ));
ITEM_2=$(( ITEM_2_PRICE * ITEM_2_QTY ));
ITEM_3=$(( ITEM_3_PRICE * ITEM_3_QTY ));

SUBTOTAL=$( echo "val = ( $ITEM_1 + $ITEM_2 + $ITEM_3 ); scale=2; val / 1" | bc-1 );
TAX=$( echo "val = ($SUBTOTAL / 1000) * 55; scale=2; val / 1" | bc-1 );
TOTAL=$(echo "val = ($SUBTOTAL + $TAX ); scale=2; val / 1 " | bc-1 );

echo -e "Subtotal: $ $SUBTOTAL ";
echo -e "Tax: $ $TAX ";
echo -e "Total: $ $TOTAL ";
