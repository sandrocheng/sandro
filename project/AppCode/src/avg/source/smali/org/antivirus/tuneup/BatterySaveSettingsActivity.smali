.class public Lorg/antivirus/tuneup/BatterySaveSettingsActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# instance fields
.field private f:Landroid/net/NetworkInfo;

.field private g:Landroid/content/IntentFilter;

.field private h:[I

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    new-instance v0, Lorg/antivirus/tuneup/i;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/i;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->f:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget-object v2, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;II)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c(Z)I

    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;ZLorg/antivirus/tuneup/t;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p2, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p2, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p2, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p2, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(I)V

    goto :goto_0
.end method

.method static synthetic a(Z)V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h:[I

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c(Z)I

    move-result v0

    return v0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0900fc

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0900f9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0900fb

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0900fa

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090102

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/tuneup/at;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->l()I

    move-result v2

    const v3, 0x7f0a0002

    invoke-static {v3}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->l()I

    move-result v2

    new-instance v3, Lorg/antivirus/tuneup/l;

    invoke-direct {v3, p0}, Lorg/antivirus/tuneup/l;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    aget v0, v0, p1

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPowerSavingThreshold(I)V

    const/4 v0, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->isPowerSavingMode()Z

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPowerSavingMode(Z)V

    invoke-static {v1}, Lorg/antivirus/AVSettings;->setLastBatteryThreshold(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lorg/antivirus/AVService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "__SAC"

    const/16 v3, 0x6d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "power_saving_options"

    const-string v2, "notify_on_low_battery"

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "off"

    goto :goto_0
.end method

.method static synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method private c(Z)I
    .locals 7

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setWifiApEnabled"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/wifi/WifiConfiguration;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWifiApState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900f4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/tuneup/at;

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->j()I

    move-result v2

    const v3, 0x7f0a0001

    invoke-static {v3}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->j()I

    move-result v2

    new-instance v3, Lorg/antivirus/tuneup/k;

    invoke-direct {v3, p0}, Lorg/antivirus/tuneup/k;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic c(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->l()I

    move-result v0

    return v0
.end method

.method private d(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.WifiApSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x1020

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":android:show_fragment"

    const-string v3, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(I)V

    return-void
.end method

.method static synthetic d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic e()Z
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->k()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0900fc

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0900fa

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0900fb

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0900f9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic f(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090109

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/tuneup/at;

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->o()I

    move-result v2

    const v3, 0x7f0a0003

    invoke-static {v3}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->o()I

    move-result v2

    new-instance v3, Lorg/antivirus/tuneup/m;

    invoke-direct {v3, p0}, Lorg/antivirus/tuneup/m;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic g()I
    .locals 1

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->k()I

    move-result v0

    return v0
.end method

.method static synthetic g(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_0
    const v1, 0x7f08008c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v6, Lorg/antivirus/tuneup/n;

    invoke-direct {v6, p0, v5}, Lorg/antivirus/tuneup/n;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f080088

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f080089

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f08008e

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    const v1, 0x7f08008d

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f08008a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f08008b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900f7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    new-instance v2, Lorg/antivirus/tuneup/o;

    invoke-direct {v2, p0, v5}, Lorg/antivirus/tuneup/o;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090004

    new-instance v2, Lorg/antivirus/tuneup/p;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/p;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_0
.end method

.method static synthetic h()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()I
    .locals 3

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic i(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->f:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->f:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09011f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f09011e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f090104

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f090105

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f090106

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v0, 0x7f090120

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v0, 0x7f090121

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f090122

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v0, 0x7f09001f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f090123

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f0900fc

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f0900fa

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f0900fb

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f0900f9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private j()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v0, v1

    :goto_0
    sget-object v3, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static k()I
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic k(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->n()Z

    move-result v0

    return v0
.end method

.method private static l()I
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->getPowerSavingModeThreshold()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic l(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->m()I

    move-result v0

    return v0
.end method

.method private m()I
    .locals 5

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWifiApState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic m(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090103

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f090104

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f090105

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f090106

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method private n()Z
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->m()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic o(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic p(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic q(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i()I

    move-result v0

    return v0
.end method

.method static synthetic r(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->j()I

    move-result v0

    return v0
.end method

.method static synthetic s(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->o()I

    move-result v0

    const v1, 0x7f0a0003

    invoke-static {v1}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method static synthetic t(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic u(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolListActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->setContentView(I)V

    const v0, 0x7f020010

    const v1, 0x7f020011

    const v2, 0x7f0900eb

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(IILjava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h:[I

    :goto_0
    new-instance v0, Lorg/antivirus/tuneup/q;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/tuneup/q;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/tuneup/j;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/j;-><init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h:[I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h:[I

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h:[I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onPause()V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onResume()V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "power_saving_options"

    const-string v2, "opened_from_notification"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
