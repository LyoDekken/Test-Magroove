import requests
from bs4 import BeautifulSoup

page = requests.get('https://qz.com/africa/latest/')

soup = BeautifulSoup(page.content, 'html.parser')

atributtes = {'class': 'toBTH'}
secondAtributtes = {'class': 'zO7Xh d4c2Z kc3s5'}

awserLink = soup.find_all('a', attrs=atributtes)
awserTitle = soup.find_all('div', attrs=secondAtributtes)

value = 10

for i in range(value):
    print('Title: ', awserTitle[i].get_text())
    print('Link: ', awserLink[i].get('href'))
