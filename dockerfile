FROM debian:12.2
WORKDIR /lab1/
COPY . /lab1/
RUN chmod +x ./BH_Loshak.sh
CMD "/lab1/BH_Loshak.sh"
