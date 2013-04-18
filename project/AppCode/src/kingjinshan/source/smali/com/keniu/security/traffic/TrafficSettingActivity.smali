.class public Lcom/keniu/security/traffic/TrafficSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field public static final a:Ljava/lang/String; = "com.keniu.security.traffic.XUANFUCHUANG_STATE"

.field public static final b:Ljava/lang/String; = "com.keniu.security.traffic.UPDATE_XUANFUCHUANG"

.field private static final m:I = 0x1


# instance fields
.field private c:Lcom/keniu/security/traffic/y;

.field private d:Lcom/ijinshan/kpref/n;

.field private e:Lcom/ijinshan/kpref/n;

.field private f:Lcom/keniu/security/util/CustomCheckBoxPreference;

.field private g:Lcom/keniu/security/util/CustomCheckBoxPreference;

.field private h:Lcom/keniu/security/util/CustomCheckBoxPreference;

.field private i:Landroid/net/wifi/WifiManager;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lcom/ijinshan/kpref/Preference;

.field private l:J

.field private n:Lcom/keniu/security/util/CustomCheckBoxPreference;

.field private o:Lcom/ijinshan/kpref/Preference;

.field private p:Landroid/widget/Toast;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->q:Z

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 914
    .line 919
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 925
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 927
    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 929
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 930
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 934
    if-nez p0, :cond_0

    .line 935
    const-string v2, "disableDataConnectivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 941
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 942
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :goto_1
    return-void

    .line 938
    :cond_0
    const-string v2, "enableDataConnectivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSettingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficSettingActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->l:J

    return-wide v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->h()V

    return-void
.end method

.method private d()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    :try_start_0
    const-string v1, "android.provider.Settings$Secure"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :try_start_1
    const-string v2, "MOBILE_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data String is========="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 160
    :try_start_3
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v1

    .line 167
    if-nez v1, :cond_0

    move v1, v5

    .line 169
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 126
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    move v1, v5

    .line 127
    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 135
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    move v1, v5

    .line 136
    goto :goto_0

    .line 137
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    move v1, v5

    .line 142
    goto :goto_0

    .line 149
    :catch_3
    move-exception v1

    .line 150
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    .line 151
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v1, v5

    .line 152
    goto :goto_0

    .line 153
    :catch_4
    move-exception v1

    .line 154
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    .line 155
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v1, v5

    .line 156
    goto :goto_0

    .line 162
    :catch_5
    move-exception v1

    .line 163
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    .line 164
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v5

    .line 165
    goto :goto_0

    :cond_0
    move v1, v6

    .line 169
    goto :goto_0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/util/CustomCheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/keniu/security/traffic/bu;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bu;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->j:Landroid/content/BroadcastReceiver;

    .line 192
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method private f()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 224
    .line 225
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v0, v6

    .line 242
    :goto_0
    return-wide v0

    .line 229
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    invoke-virtual {v2, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v2

    .line 232
    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    invoke-virtual {v4, v1}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v4

    .line 235
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1

    .line 239
    iget-wide v2, v1, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/ac;->b:J

    add-long v1, v2, v4

    .line 241
    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    move-wide v0, v1

    .line 242
    goto :goto_0

    :cond_1
    move-wide v1, v6

    goto :goto_1
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficSettingActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->i:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/util/CustomCheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    return-object v0
.end method

.method private g()V
    .locals 14

    .prologue
    const v13, 0x7f0b0260

    const v12, 0x7f0b025f

    const v11, 0x7f030034

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 247
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    .line 249
    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    .line 250
    new-instance v0, Lcom/ijinshan/kpref/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 251
    const v2, 0x7f0b029f

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/PreferenceCategory;->e(I)V

    .line 252
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 255
    new-instance v0, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0, v11}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 257
    const v2, 0x7f0b03c4

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->d(Ljava/lang/String;)V

    .line 259
    const v2, 0x7f0b03c5

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 260
    const-string v2, ""

    .line 261
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget v3, v3, Lcom/keniu/security/traffic/y;->w:I

    packed-switch v3, :pswitch_data_0

    .line 275
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v2, Lcom/keniu/security/traffic/ci;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/ci;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 306
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 309
    new-instance v0, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    .line 310
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v11}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 311
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    const v2, 0x7f0b0320

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 312
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    new-instance v2, Lcom/keniu/security/traffic/cj;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/cj;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 325
    const-wide/16 v2, 0x0

    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-wide/16 v2, 0x0

    :goto_1
    iput-wide v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->l:J

    .line 326
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    iget-wide v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->l:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->k:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 330
    new-instance v0, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 331
    const v2, 0x7f0b034c

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 333
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 337
    :cond_0
    const-string v2, ""

    .line 351
    :goto_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 352
    const v2, 0x7f0b02d4

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 355
    :goto_3
    invoke-virtual {v0, v11}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 357
    new-instance v2, Lcom/keniu/security/traffic/ck;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/ck;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 370
    invoke-static {}, Lcom/keniu/security/h/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/keniu/security/h/b;->a:Z

    if-nez v2, :cond_1

    .line 371
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 374
    :cond_1
    new-instance v2, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v2, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 376
    const v0, 0x7f0b03c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ijinshan/kpref/Preference;->d(Ljava/lang/String;)V

    .line 378
    const v0, 0x7f0b0390

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    const v0, 0x7f0b02d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {v2, v11}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 384
    new-instance v0, Lcom/keniu/security/traffic/cl;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cl;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v2, v0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 398
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 401
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->g:J

    invoke-static {p0, v3, v4}, Lcom/hoi/widget/r;->a(Landroid/content/Context;J)Lcom/hoi/widget/r;

    move-result-object v3

    .line 403
    const v0, 0x7f0b03d3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hoi/widget/r;->d(Ljava/lang/String;)V

    .line 405
    const v0, 0x7f0b02f7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hoi/widget/r;->b(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v4, v0, Lcom/keniu/security/traffic/y;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    const v0, 0x7f0b02d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Lcom/hoi/widget/r;->a(Ljava/lang/CharSequence;)V

    .line 410
    const v0, 0x7f0b02fa

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hoi/widget/r;->c(Ljava/lang/CharSequence;)V

    .line 412
    new-instance v0, Lcom/keniu/security/traffic/cm;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cm;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v3, v0}, Lcom/hoi/widget/r;->a(Lcom/ijinshan/kpref/m;)V

    .line 430
    invoke-virtual {v1, v3}, Lcom/ijinshan/kpref/PreferenceScreen;->b(Lcom/ijinshan/kpref/Preference;)V

    .line 433
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v4, v0, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {p0, v4, v5}, Lcom/hoi/widget/r;->a(Landroid/content/Context;J)Lcom/hoi/widget/r;

    move-result-object v4

    .line 435
    const v0, 0x7f0b02f2

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hoi/widget/r;->b(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v5, v0, Lcom/keniu/security/traffic/y;->h:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_b

    const v0, 0x7f0b02d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v4, v0}, Lcom/hoi/widget/r;->a(Ljava/lang/CharSequence;)V

    .line 440
    const v0, 0x7f0b02f6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hoi/widget/r;->c(Ljava/lang/CharSequence;)V

    .line 442
    const v0, 0x7f0b03d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hoi/widget/r;->d(Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/keniu/security/traffic/cn;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cn;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v4, v0}, Lcom/hoi/widget/r;->a(Lcom/ijinshan/kpref/m;)V

    .line 462
    invoke-virtual {v1, v4}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 465
    new-instance v5, Lcom/hoi/widget/n;

    invoke-direct {v5, p0}, Lcom/hoi/widget/n;-><init>(Landroid/content/Context;)V

    .line 468
    const v0, 0x7f0b03c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hoi/widget/n;->d(Ljava/lang/String;)V

    .line 470
    const v0, 0x7f0b0399

    invoke-virtual {v5, v0}, Lcom/hoi/widget/n;->e(I)V

    .line 471
    const v0, 0x7f0b02a0

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget v8, v8, Lcom/keniu/security/traffic/y;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hoi/widget/n;->a(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v5}, Lcom/hoi/widget/n;->e()V

    .line 475
    invoke-virtual {v5}, Lcom/hoi/widget/n;->b()V

    .line 476
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->e:I

    invoke-virtual {v5, v0}, Lcom/hoi/widget/n;->a(I)V

    .line 477
    new-instance v0, Lcom/keniu/security/traffic/co;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/co;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v5, v0}, Lcom/hoi/widget/n;->a(Lcom/ijinshan/kpref/m;)V

    .line 497
    invoke-virtual {v1, v5}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 500
    new-instance v0, Lcom/ijinshan/kpref/ListPreference;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/ListPreference;-><init>(Landroid/content/Context;)V

    .line 501
    invoke-virtual {v0, v11}, Lcom/ijinshan/kpref/ListPreference;->c(I)V

    .line 502
    const v6, 0x7f0b02c0

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/ListPreference;->d(Ljava/lang/String;)V

    .line 504
    const v6, 0x7f0b02b8

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/ListPreference;->e(I)V

    .line 505
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->b()V

    .line 507
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->l()V

    .line 508
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->n()V

    .line 511
    iget-object v6, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v6, v6, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v7, v7, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v6, Lcom/keniu/security/traffic/cp;

    invoke-direct {v6, p0}, Lcom/keniu/security/traffic/cp;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 538
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 541
    new-instance v0, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    .line 542
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v11}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 543
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v6, 0x7f0b02c1

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/Preference;->d(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v6, 0x7f0b02c8

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->v:I

    if-nez v0, :cond_c

    .line 548
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v6, 0x7f0b02c4

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 554
    :goto_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    new-instance v6, Lcom/keniu/security/traffic/bv;

    invoke-direct {v6, p0}, Lcom/keniu/security/traffic/bv;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 566
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 568
    new-instance v0, Lcom/ijinshan/kpref/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 569
    const v6, 0x7f0b02a1

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/PreferenceCategory;->e(I)V

    .line 570
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 573
    new-instance v0, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v0, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 575
    const v6, 0x7f0b03c0

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 577
    const v6, 0x7f0b02ee

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(I)V

    .line 578
    iget-object v6, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v6, v6, Lcom/keniu/security/traffic/y;->a:Z

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 579
    invoke-virtual {v0, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 580
    invoke-virtual {v0, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 581
    new-instance v6, Lcom/keniu/security/traffic/bw;

    invoke-direct {v6, p0, v0}, Lcom/keniu/security/traffic/bw;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;Lcom/keniu/security/util/CustomCheckBoxPreference;)V

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 645
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 648
    new-instance v0, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v0, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    .line 649
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v6, 0x7f0b038d

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const-string v6, "kn_traffis_xuanfuchuang_key"

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->C()V

    .line 653
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    iget-object v6, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v6, v6, Lcom/keniu/security/traffic/y;->r:Z

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 654
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 655
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 656
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    new-instance v6, Lcom/keniu/security/traffic/bz;

    invoke-direct {v6, p0}, Lcom/keniu/security/traffic/bz;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 675
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 678
    new-instance v0, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v0, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    .line 679
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v6, 0x7f0b02f1

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(I)V

    .line 680
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v6, 0x7f0b02f0

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 682
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 683
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->h()V

    .line 684
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    new-instance v6, Lcom/keniu/security/traffic/ca;

    invoke-direct {v6, p0}, Lcom/keniu/security/traffic/ca;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v0, v6}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 696
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 699
    new-instance v6, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v6, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 702
    const v0, 0x7f0b03d5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 704
    const v0, 0x7f0b02f5

    invoke-virtual {v6, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(I)V

    .line 705
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v0, v0, Lcom/keniu/security/traffic/y;->c:Z

    invoke-virtual {v6, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 706
    invoke-virtual {v6, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 707
    invoke-virtual {v6, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 708
    new-instance v0, Lcom/keniu/security/traffic/cb;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cb;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v6, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 723
    invoke-virtual {v1, v6}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 726
    new-instance v0, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v0, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    .line 728
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->i:Landroid/net/wifi/WifiManager;

    .line 730
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v7, 0x7f0b039e

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v7, 0x7f0b03a1

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 732
    new-instance v0, Lcom/keniu/security/traffic/cc;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cc;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->d:Lcom/ijinshan/kpref/n;

    .line 752
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    iget-object v7, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->d:Lcom/ijinshan/kpref/n;

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 754
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 757
    new-instance v0, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v0, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    .line 759
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v7, 0x7f0b039f

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v7, 0x7f0b03a4

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 762
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 763
    new-instance v0, Lcom/keniu/security/traffic/cd;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cd;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->e:Lcom/ijinshan/kpref/n;

    .line 821
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    iget-object v7, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->e:Lcom/ijinshan/kpref/n;

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 825
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/h/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/h/b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/h/b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 828
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 829
    invoke-static {v9, p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a(ZLandroid/content/Context;)V

    .line 830
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v9}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 836
    :cond_2
    :goto_8
    new-instance v0, Lcom/ijinshan/kpref/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 837
    const v7, 0x7f0b02a2

    invoke-virtual {v0, v7}, Lcom/ijinshan/kpref/PreferenceCategory;->e(I)V

    .line 838
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 841
    new-instance v0, Lcom/keniu/security/traffic/cg;

    invoke-direct {v0, p0, p0}, Lcom/keniu/security/traffic/cg;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;Landroid/content/Context;)V

    .line 843
    const-string v7, "traffic_clear_data"

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/MyDialogPreference;->d(Ljava/lang/String;)V

    .line 844
    const v7, 0x7f0b030b

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/MyDialogPreference;->e(I)V

    .line 845
    const v7, 0x7f0b0219

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/MyDialogPreference;->c(Ljava/lang/CharSequence;)V

    .line 846
    const v7, 0x7f0b02db

    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/MyDialogPreference;->d(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {v0}, Lcom/keniu/security/util/MyDialogPreference;->f()V

    .line 848
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 850
    new-instance v7, Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {v7, p0, v10}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 853
    const v8, 0x7f0b03be

    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/keniu/security/util/CustomCheckBoxPreference;->d(Ljava/lang/String;)V

    .line 855
    const v8, 0x7f0b03bf

    invoke-virtual {v7, v8}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(I)V

    .line 857
    invoke-virtual {v7, v12}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(I)V

    .line 858
    invoke-virtual {v7, v13}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b(I)V

    .line 859
    iget-object v8, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v8, v8, Lcom/keniu/security/traffic/y;->q:Z

    invoke-virtual {v7, v8}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 860
    new-instance v8, Lcom/keniu/security/traffic/ch;

    invoke-direct {v8, p0}, Lcom/keniu/security/traffic/ch;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    invoke-virtual {v7, v8}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 874
    invoke-static {}, Lcom/keniu/security/h/b;->a()Z

    move-result v8

    if-nez v8, :cond_3

    sget-boolean v8, Lcom/keniu/security/h/b;->a:Z

    if-nez v8, :cond_3

    .line 875
    invoke-virtual {v1, v7}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 877
    :cond_3
    const v1, 0x7f0b03d5

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {v3, v1}, Lcom/hoi/widget/r;->e(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v4, v1}, Lcom/hoi/widget/r;->e(Ljava/lang/String;)V

    .line 881
    const v1, 0x7f0b03c0

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-virtual {v2, v1}, Lcom/ijinshan/kpref/Preference;->e(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v5, v1}, Lcom/hoi/widget/n;->e(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v6, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/MyDialogPreference;->e(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(Ljava/lang/String;)V

    .line 888
    const-string v0, "kn_traffis_xuanfuchuang_key"

    .line 889
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->e(Ljava/lang/String;)V

    .line 891
    return-void

    .line 263
    :pswitch_0
    const v2, 0x7f0b03b4

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 266
    :pswitch_1
    const v2, 0x7f0b03b6

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 269
    :pswitch_2
    const v2, 0x7f0b03b8

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 272
    :pswitch_3
    const v2, 0x7f0b0520

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 325
    :cond_4
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v5, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    invoke-virtual {v5, v4}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    invoke-virtual {v7, v4}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-wide v2, v4, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v4, v4, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v2, v4

    :cond_5
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto/16 :goto_1

    .line 339
    :cond_6
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 346
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 354
    :cond_8
    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 380
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v4, v0, Lcom/keniu/security/traffic/y;->g:J

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 437
    :cond_b
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-wide v5, v0, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 551
    :cond_c
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v6, 0x7f0b02c6

    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/Preference;->f(I)V

    goto/16 :goto_7

    .line 832
    :cond_d
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->g:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    goto/16 :goto_8

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private h()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    if-nez v0, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v0, v0, Lcom/keniu/security/traffic/y;->r:Z

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget-boolean v1, v1, Lcom/keniu/security/traffic/y;->s:Z

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    goto :goto_0

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->n:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficSettingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 951
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_0

    .line 953
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->q:Z

    if-eqz v0, :cond_0

    .line 955
    iput-boolean v2, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->q:Z

    .line 957
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 959
    if-eqz v0, :cond_1

    .line 960
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 961
    const-class v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 963
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 970
    :cond_0
    :goto_0
    return v2

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->p:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 216
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 217
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v1, 0x7f0b0366

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(Z)V

    .line 221
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v1, 0x7f0b0362

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(Z)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 203
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v1, 0x7f0b0363

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(Z)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v1, 0x7f0b0364

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(Z)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const v1, 0x7f0b0365

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->f:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(Z)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->h:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 906
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->g()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 72
    const-string v0, "\u63d0\u6743\u5931\u8d25,\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->p:Landroid/widget/Toast;

    .line 74
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 75
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    const v2, 0x3fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 77
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    .line 78
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->g()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onDestroy()V

    .line 84
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 85
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/keniu/security/traffic/bu;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bu;-><init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->j:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->c:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->v:I

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v1, 0x7f0b02c4

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSettingActivity;->o:Lcom/ijinshan/kpref/Preference;

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->f(I)V

    goto :goto_0
.end method
