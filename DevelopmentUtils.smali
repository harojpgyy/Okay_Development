# Settings.dex

.class public Lcom/android/settings/DevelopmentUtils;
.super Ljava/lang/Object;
.source "DevelopmentUtils.java"


# static fields
.field private static final CAPSENSOR_TEST:Ljava/lang/String; = "*#444#"

.field private static final CUSTOM_GEN_LAYOUT:Ljava/lang/String; = "*#52688#"

.field private static final CUS_TEST:Ljava/lang/String; = "#*2008#"

.field private static final ENG_ASSEM_TEST:Ljava/lang/String; = "*#87#"

.field private static final ENG_ASSEM_TEST_AGAIN:Ljava/lang/String; = "*#88#"

.field private static final ENG_PCBA_TEST:Ljava/lang/String; = "*#89#"

.field private static final ENG_TEST:Ljava/lang/String; = "*#79837#"

.field private static final FW_UPDATE_TEST:Ljava/lang/String; = "*#888#"

.field private static final MD5_ALGORITHM:Ljava/lang/String; = "md5"

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final MMI_REGULATORY_INFO_DISPLAY:Ljava/lang/String; = "*#07#"

.field private static final NAVIGATIONBAR_TEST:Ljava/lang/String; = "*#555#"

.field private static final OKAY_DEFAULT:Ljava/lang/String; = "010@okay.cn"

.field private static final ONE_TOUCH_TEST:Ljava/lang/String; = "*#66386824#"

.field private static final RECENTSAPP_TEST:Ljava/lang/String; = "*#333#"

.field private static final TAG:Ljava/lang/String; = "DevelopmentUtils"

.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DevelopmentUtils;->md5:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_a

    .line 24
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_9
    #disallowed odex opcode
    #return-void-no-barrier
    return-void

    .line 57
    .end local v0  # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_a
    move-exception v0

    .line 58
    .restart local v0  # "e":Ljava/security/NoSuchAlgorithmException;
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@19
    nop

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "plainText"  # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v4, Lcom/android/settings/DevelopmentUtils;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 75
    .local v2, "cipherData":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_11
    if-ge v4, v5, :cond_3c

    aget-byte v1, v2, v4

    .line 77
    .local v1, "cipher":B
    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "toHexStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3  # "toHexStr":Ljava/lang/String;
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 80
    .end local v1  # "cipher":B
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static exitDevelpment(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"  # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/android/settings/Utils;->isTeacherPad()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "usb_storage_enable"

    .line 134
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "usb_otg_enable"

    .line 137
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    :goto_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "adb_enabled"

    .line 147
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "xdf_apk_install_enable"

    .line 150
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "net_white_list_enable"

    .line 153
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "launcher_white_list_enable"

    .line 156
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "bugreport_in_power_menu"

    .line 159
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "stay_on_while_plugged_in"

    .line 161
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "bluetooth_hci_log"

    .line 163
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "mock_location"

    .line 166
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "sd_card_enable"

    .line 168
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string/jumbo v0, "persist.sys.sdcard_enable"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "development"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "show"

    .line 172
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void

    .line 140
    :cond_98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "usb_storage_enable"

    .line 140
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "usb_otg_enable"

    .line 143
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1c
.end method

.method public static getEnterDevPassword()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    invoke-static {}, Lcom/android/settings/DevelopmentUtils;->getVerificationMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DevelopmentUtils;->encryptMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "md5Result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "enterPassword":Ljava/lang/String;
    return-object v0
.end method

.method private static getSNInfo()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const/16 v1, 0x1ac6

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Config;->readNVItems(I)[B

    move-result-object v0

    .line 87
    .local v0, "result":[B
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    .line 88
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 90
    :cond_19
    return-object v2
.end method

.method public static getVerificationMsg()Ljava/lang/String;
    .registers 9

    .prologue
    .line 104
    invoke-static {}, Lcom/android/settings/DevelopmentUtils;->getSNInfo()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "sn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4d

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 107
    .local v3, "sequenceNumber":Ljava/lang/String;
    :goto_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "c":Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 109
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 110
    .local v2, "month":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 111
    .local v1, "day":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 113
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 116
    const-string/jumbo v8, "010@okay.cn"

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 105
    .end local v0  # "c":Ljava/util/Calendar;
    .end local v1  # "day":I
    .end local v2  # "month":I
    .end local v3  # "sequenceNumber":Ljava/lang/String;
    .end local v5  # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v6  # "year":I
    :cond_4d
    move-object v3, v4

    .restart local v3  # "sequenceNumber":Ljava/lang/String;
    goto :goto_c
.end method

.method public static isEnterDevelpment(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"  # Landroid/content/Context;

    .prologue
    .line 123
    const-string/jumbo v2, "development"

    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "mDevelopmentPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "show"

    .line 127
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 125
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    .local v1, "showDev":Z
    const-string/jumbo v2, "DevelopmentUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEnterDevelpment showDev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1
.end method

.method public static showEnterDevelopmentDialog(Landroid/content/Context;)V
    .registers 7
    .param p0, "mContext"  # Landroid/content/Context;

    .prologue
    .line 182
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 183
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f040047

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 186
    .local v2, "password":Landroid/widget/EditText;
    new-instance v1, Lcom/android/settings/CommonDialog;

    new-instance v4, Lcom/android/settings/DevelopmentUtils$1;

    invoke-direct {v4, v2, p0}, Lcom/android/settings/DevelopmentUtils$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 311
    new-instance v5, Lcom/android/settings/DevelopmentUtils$2;

    invoke-direct {v5}, Lcom/android/settings/DevelopmentUtils$2;-><init>()V

    .line 186
    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/settings/CommonDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 316
    .local v1, "okay_common_dialog":Lcom/android/settings/CommonDialog;
    new-instance v4, Lcom/android/settings/DevelopmentUtils$3;

    invoke-direct {v4}, Lcom/android/settings/DevelopmentUtils$3;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/settings/CommonDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 321
    const-string/jumbo v4, "请输入工模测试暗码："

    invoke-virtual {v1, v4}, Lcom/android/settings/CommonDialog;->setTitle(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v4, "取消"

    const-string/jumbo v5, "确定"

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/CommonDialog;->setButtonTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Lcom/android/settings/CommonDialog;->show()V

    .line 181
    return-void
.end method
