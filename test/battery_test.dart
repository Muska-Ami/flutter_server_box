import 'package:flutter_test/flutter_test.dart';
import 'package:toolbox/data/model/server/battery.dart';

const _raw = '''
POWER_SUPPLY_NAME=battery
POWER_SUPPLY_INPUT_SUSPEND=0
POWER_SUPPLY_BATTERY_INPUT_SUSPEND=0
POWER_SUPPLY_STATUS=Discharging
POWER_SUPPLY_HEALTH=Good
POWER_SUPPLY_PRESENT=1
POWER_SUPPLY_CHARGE_TYPE=N/A
POWER_SUPPLY_CAPACITY=73
POWER_SUPPLY_CHARGER_TEMP_MAX=800
POWER_SUPPLY_INPUT_CURRENT_LIMITED=0
POWER_SUPPLY_VOLTAGE_NOW=4002675
POWER_SUPPLY_VOLTAGE_MAX=4480000
POWER_SUPPLY_VOLTAGE_QNOVO=-22
POWER_SUPPLY_CURRENT_NOW=157714
POWER_SUPPLY_CURRENT_QNOVO=-22
POWER_SUPPLY_CONSTANT_CHARGE_CURRENT_MAX=6000000
POWER_SUPPLY_CONSTANT_CHARGE_CURRENT=4600000
POWER_SUPPLY_CHARGE_TERM_CURRENT=-220
POWER_SUPPLY_TEMP=235
POWER_SUPPLY_TECHNOLOGY=Li-poly
POWER_SUPPLY_STEP_CHARGING_ENABLED=0
POWER_SUPPLY_SW_JEITA_ENABLED=1
POWER_SUPPLY_CHARGE_DONE=0
POWER_SUPPLY_PARALLEL_DISABLE=0
POWER_SUPPLY_SET_SHIP_MODE=0
POWER_SUPPLY_DIE_HEALTH=Unknown
POWER_SUPPLY_DC_THERMAL_LEVELS=0
POWER_SUPPLY_RERUN_AICL=0
POWER_SUPPLY_DP_DM=0
POWER_SUPPLY_CHARGE_CONTROL_LIMIT_MAX=16
POWER_SUPPLY_CHARGE_CONTROL_LIMIT=0
POWER_SUPPLY_CHARGE_COUNTER=2033341
POWER_SUPPLY_CYCLE_COUNT=1
POWER_SUPPLY_RECHARGE_SOC=99
POWER_SUPPLY_RECHARGE_VBAT=-22
POWER_SUPPLY_NIGHT_CHARGING=0
POWER_SUPPLY_CHARGE_FULL=3022000
POWER_SUPPLY_FORCE_RECHARGE=0
POWER_SUPPLY_CHARGE_FULL_DESIGN=4700000
POWER_SUPPLY_FCC_STEPPER_ENABLE=0
POWER_SUPPLY_BATTERY_CHARGING_ENABLED=1
POWER_SUPPLY_DP_DM_BQ=0
POWER_SUPPLY_TYPE_RECHECK=0
POWER_SUPPLY_WARM_FAKE_CHARGING=0
POWER_SUPPLY_STEP_VFLOAT_INDEX=0
POWER_SUPPLY_CAPACITY_LEVEL=Normal

POWER_SUPPLY_NAME=bms
POWER_SUPPLY_AUTHENTIC=1
POWER_SUPPLY_ROMID=9f,e8,41,99,10,f0,04,42
POWER_SUPPLY_DS_STATUS=00,00,08,03,02,00,ff,e8
POWER_SUPPLY_PAGE0_DATA=53,42,4d,34,51,30,33,32,00,3e,b0,46,4d,44,31,31
POWER_SUPPLY_CHIP_OK=1
POWER_SUPPLY_CAPACITY=73
POWER_SUPPLY_REAL_CAPACITY=73
POWER_SUPPLY_SHUTDOWN_DELAY=0
POWER_SUPPLY_CAPACITY_RAW=7340
POWER_SUPPLY_SOC_DECIMAL=40
POWER_SUPPLY_SOC_DECIMAL_RATE=30
POWER_SUPPLY_CC_SOC=6318
POWER_SUPPLY_TEMP=235
POWER_SUPPLY_VOLTAGE_NOW=4002675
POWER_SUPPLY_VOLTAGE_OCV=4039556
POWER_SUPPLY_VOLTAGE_AVG=3989287
POWER_SUPPLY_CURRENT_NOW=157714
POWER_SUPPLY_CURRENT_AVG=329915
POWER_SUPPLY_RESISTANCE_ID=100700
POWER_SUPPLY_RESISTANCE=186278
POWER_SUPPLY_ESR_ACTUAL=-22
POWER_SUPPLY_ESR_NOMINAL=-22
POWER_SUPPLY_BATTERY_TYPE=j11sun_4700mah
POWER_SUPPLY_CHARGE_FULL_DESIGN=4700000
POWER_SUPPLY_VOLTAGE_MAX_DESIGN=4450000
POWER_SUPPLY_CHARGE_NOW_RAW=2974065
POWER_SUPPLY_CHARGE_NOW=0
POWER_SUPPLY_CHARGE_FULL=3022000
POWER_SUPPLY_CHARGE_COUNTER=2033341
POWER_SUPPLY_CHARGE_COUNTER_SHADOW=2033435
POWER_SUPPLY_CYCLE_COUNT=1
POWER_SUPPLY_CYCLE_COUNTS=15 335 526 552 493 398 287 141 
POWER_SUPPLY_SOC_REPORTING_READY=1
POWER_SUPPLY_CLEAR_SOH=0
POWER_SUPPLY_SOH=50
POWER_SUPPLY_DEBUG_BATTERY=0
POWER_SUPPLY_CONSTANT_CHARGE_VOLTAGE=4439948
POWER_SUPPLY_TIME_TO_FULL_AVG=-1
POWER_SUPPLY_TIME_TO_EMPTY_AVG=18366
POWER_SUPPLY_CC_STEP=0
POWER_SUPPLY_CC_STEP_SEL=0
POWER_SUPPLY_BATT_AGE_LEVEL=-22
POWER_SUPPLY_POWER_NOW=26828590
POWER_SUPPLY_POWER_AVG=16967163
POWER_SUPPLY_SCALE_MODE_EN=0
POWER_SUPPLY_CALIBRATE=-22
POWER_SUPPLY_FASTCHARGE_MODE=0
POWER_SUPPLY_FFC_TERMINATION_CURRENT=-800
POWER_SUPPLY_SYS_TERMINATION_CURRENT=-300
POWER_SUPPLY_FFC_SYS_TERMINATION_CURRENT=-900
POWER_SUPPLY_VBATT_FULL_VOL=4440
POWER_SUPPLY_FCC_VBATT_FULL_VOL=4490
POWER_SUPPLY_KI_COEFF_CURRENT=3900

POWER_SUPPLY_NAME=bq2597x-standalone
POWER_SUPPLY_PRESENT=0
POWER_SUPPLY_CHARGING_ENABLED=0
POWER_SUPPLY_STATUS=Unknown
POWER_SUPPLY_TI_BATTERY_PRESENT=1
POWER_SUPPLY_TI_VBUS_PRESENT=0
POWER_SUPPLY_TI_BATTERY_VOLTAGE=4004
POWER_SUPPLY_TI_BATTERY_CURRENT=0
POWER_SUPPLY_TI_BATTERY_TEMPERATURE=0
POWER_SUPPLY_TI_BUS_VOLTAGE=0
POWER_SUPPLY_TI_BUS_CURRENT=0
POWER_SUPPLY_TI_BUS_TEMPERATURE=0
POWER_SUPPLY_TI_DIE_TEMPERATURE=0
POWER_SUPPLY_TI_ALARM_STATUS=0
POWER_SUPPLY_TI_FAULT_STATUS=0
POWER_SUPPLY_TI_REG_STATUS=0
POWER_SUPPLY_TI_SET_BUS_PROTECTION_FOR_QC3=0
POWER_SUPPLY_MODEL_NAME=bq2597x-standalone

POWER_SUPPLY_NAME=dc
POWER_SUPPLY_INPUT_SUSPEND=0
POWER_SUPPLY_PRESENT=0
POWER_SUPPLY_ONLINE=0
POWER_SUPPLY_CURRENT_MAX=100000
POWER_SUPPLY_VOLTAGE_MAX=12000000
POWER_SUPPLY_REAL_TYPE=Wireless
POWER_SUPPLY_DC_RESET=0
POWER_SUPPLY_AICL_DONE=0

POWER_SUPPLY_NAME=main
POWER_SUPPLY_VOLTAGE_MAX=4450000
POWER_SUPPLY_CONSTANT_CHARGE_CURRENT_MAX=4600000
POWER_SUPPLY_TYPE=Main
POWER_SUPPLY_INPUT_CURRENT_SETTLED=0
POWER_SUPPLY_INPUT_VOLTAGE_SETTLED=5000000
POWER_SUPPLY_FCC_DELTA=0
POWER_SUPPLY_CURRENT_MAX=0
POWER_SUPPLY_FLASH_ACTIVE=0
POWER_SUPPLY_FLASH_TRIGGER=0
POWER_SUPPLY_TOGGLE_STAT=0
POWER_SUPPLY_MAIN_FCC_MAX=-22
POWER_SUPPLY_IRQ_STATUS=0
POWER_SUPPLY_FORCE_MAIN_FCC=4600000
POWER_SUPPLY_FORCE_MAIN_ICL=100000
POWER_SUPPLY_COMP_CLAMP_LEVEL=0
POWER_SUPPLY_HEALTH=Unknown
POWER_SUPPLY_TEMP_HOT=0

POWER_SUPPLY_NAME=pc_port
POWER_SUPPLY_TYPE=USB
POWER_SUPPLY_ONLINE=0
POWER_SUPPLY_VOLTAGE_MAX=5000000
POWER_SUPPLY_CURRENT_MAX=0

POWER_SUPPLY_NAME=usb
POWER_SUPPLY_PRESENT=0
POWER_SUPPLY_ONLINE=0
POWER_SUPPLY_VOLTAGE_NOW=0
POWER_SUPPLY_PD_CURRENT_MAX=-22
POWER_SUPPLY_CURRENT_MAX=0
POWER_SUPPLY_TYPE=USB_PD
POWER_SUPPLY_TYPEC_MODE=Nothing attached
POWER_SUPPLY_TYPEC_POWER_ROLE=dual power role
POWER_SUPPLY_TYPEC_CC_ORIENTATION=0
POWER_SUPPLY_PD_ACTIVE=0
POWER_SUPPLY_INPUT_CURRENT_SETTLED=0
POWER_SUPPLY_INPUT_CURRENT_NOW=0
POWER_SUPPLY_BOOST_CURRENT=0
POWER_SUPPLY_PE_START=0
POWER_SUPPLY_CTM_CURRENT_MAX=-22
POWER_SUPPLY_HW_CURRENT_MAX=0
POWER_SUPPLY_REAL_TYPE=Unknown
POWER_SUPPLY_HVDCP3_TYPE=0
POWER_SUPPLY_QUICK_CHARGE_TYPE=0
POWER_SUPPLY_PD_VOLTAGE_MAX=5000000
POWER_SUPPLY_PD_VOLTAGE_MIN=5000000
POWER_SUPPLY_CONNECTOR_TYPE=0
POWER_SUPPLY_CONNECTOR_HEALTH=Cool
POWER_SUPPLY_CONNECTOR_TEMP=293
POWER_SUPPLY_VBUS_DISABLE=0
POWER_SUPPLY_VOLTAGE_MAX=5000000
POWER_SUPPLY_VOLTAGE_MAX_DESIGN=5000000
POWER_SUPPLY_VOLTAGE_MAX_LIMIT=5000000
POWER_SUPPLY_SMB_EN_MODE=0
POWER_SUPPLY_SMB_EN_REASON=0
POWER_SUPPLY_ADAPTER_CC_MODE=0
POWER_SUPPLY_SCOPE=Unknown
POWER_SUPPLY_MOISTURE_DETECTED=0
POWER_SUPPLY_HVDCP_OPTI_ALLOWED=1
POWER_SUPPLY_QC_OPTI_DISABLE=0
POWER_SUPPLY_VOLTAGE_VPH=3995694
POWER_SUPPLY_THERM_ICL_LIMIT=-22
POWER_SUPPLY_FASTCHARGE_MODE=0
POWER_SUPPLY_PD_AUTHENTICATION=0
POWER_SUPPLY_SKIN_HEALTH=Unknown
POWER_SUPPLY_APSD_RERUN=0
POWER_SUPPLY_APSD_TIMEOUT=0
POWER_SUPPLY_APDO_MAX=0
POWER_SUPPLY_CHARGER_STATUS=0
POWER_SUPPLY_INPUT_VOLTAGE_SETTLED=0
POWER_SUPPLY_MOISTURE_DETECTION_ENABLED=0
''';

void main() {
  test('parse battery', () {
    final result = Batteries.parse(_raw);
    expect(result.length, 7);
  });
}