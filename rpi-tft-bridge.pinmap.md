Papilio -> TFT ITEAD 2.8 bridge
================================
This is the pinmap i used when connecting the TFT to the PI
using wires. Saving it here in hope of ever assembling the
shield adapter I've desiged.



|ITDB28 Arduino shield| Raspberry PI 2| RPI Descriptor|
|-------|----------------|---------------|
|D0|21|BCM9 (MISO)|
|D1|23|BCM11 (SCLK)|
|D2|12|BCM 18 (PCM_C)|
|D3|16|BCM 23|
|D4|18|BCM 24|
|D5|22|BCM 25|
|D6|24|BCM 8 (CEO0)|
|D7|26|BCM 7 (CE1)|
|RESET|11|BCM 17|
|3V3|17|3v3 Power|
|GROUND|14|Ground|
|A3|13|BCM 27 (PCM_D)|
|A4|3|BCM 2 (SDA)|
|A5|5|BCM 3 (SCL)|

