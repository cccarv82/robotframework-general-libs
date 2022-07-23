from faker import Faker
fake = Faker()


def valor_deposito():
    valor_deposito = fake.pyint(min_value=1000, max_value=5000)
    return valor_deposito


def valor_saque():
    valor_saque = fake.pyint(min_value=100, max_value=500)
    return valor_saque
