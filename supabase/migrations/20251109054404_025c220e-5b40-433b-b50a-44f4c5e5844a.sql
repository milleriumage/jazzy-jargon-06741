-- Insert initial credit packages
INSERT INTO public.credit_packages (id, credits, price, bonus, best_value, stripe_product_id) VALUES
  ('pkg1', 100, 9.99, 0, false, 'prod_credit_100'),
  ('pkg2', 500, 39.99, 50, true, 'prod_credit_500'),
  ('pkg3', 1000, 69.99, 150, false, 'prod_credit_1000')
ON CONFLICT (id) DO NOTHING;