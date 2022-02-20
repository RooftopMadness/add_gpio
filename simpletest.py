import Adafruit_MCP3008
import time
import Adafruit_GPIO.SPI as SPI

SPI_PORT   = 0
SPI_DEVICE = 2
mcp = Adafruit_MCP3008.MCP3008(spi=SPI.SpiDev(SPI_PORT, SPI_DEVICE))
while(True):
	print("CH0 "  + str(mcp.read_adc(0)) + "CH1 " + str(mcp.read_adc(1)))
	time.sleep(0.5)
