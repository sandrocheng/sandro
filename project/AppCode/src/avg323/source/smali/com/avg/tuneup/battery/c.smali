.class public Lcom/avg/tuneup/battery/c;
.super Lcom/avg/tuneup/h;


# static fields
.field public static final a:[I

.field public static final b:[I


# instance fields
.field private c:Landroid/net/NetworkInfo;

.field private d:Landroid/content/IntentFilter;

.field private e:[I

.field private f:Lcom/avg/tuneup/battery/l;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avg/tuneup/battery/c;->a:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/avg/tuneup/battery/c;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    new-instance v0, Lcom/avg/tuneup/battery/d;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/battery/d;-><init>(Lcom/avg/tuneup/battery/c;)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ab()I

    move-result v0

    return v0
.end method

.method static synthetic B(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic C(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->Q()Z

    move-result v0

    return v0
.end method

.method static synthetic D(Lcom/avg/tuneup/battery/c;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic E(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->R()I

    move-result v0

    return v0
.end method

.method private F()Landroid/net/NetworkInfo$State;
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method

.method static synthetic F(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->O()Z

    move-result v0

    return v0
.end method

.method static synthetic G(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private G()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->F()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->connected:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->connecting:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->disconnected:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->disconnecting:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, ""

    goto :goto_0

    :cond_5
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->unknown:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic H(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private H()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic I(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private I()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private J()I
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic J(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic K(Lcom/avg/tuneup/battery/c;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_screen_timeout:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/d;->dlg_ic_screen_timeout:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/avg/ui/general/b/e;

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->M()I

    move-result v3

    iget-object v4, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/a/b;->battery_save_screen_timeout_array:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->M()I

    move-result v2

    new-instance v3, Lcom/avg/tuneup/battery/f;

    invoke-direct {v3, p0}, Lcom/avg/tuneup/battery/f;-><init>(Lcom/avg/tuneup/battery/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private L()I
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic L(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->H()Z

    move-result v0

    return v0
.end method

.method private M()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->L()I

    move-result v2

    move v0, v1

    :goto_0
    sget-object v3, Lcom/avg/tuneup/battery/c;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/avg/tuneup/battery/c;->a:[I

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

.method static synthetic M(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic N(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private N()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic O(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private O()Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

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

.method private P()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/c;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic P(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->N()Z

    move-result v0

    return v0
.end method

.method static synthetic Q(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private Q()Z
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->R()I

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

.method private R()I
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

.method static synthetic R(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic S(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->R()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->unknown:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private T()Z
    .locals 1

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic T(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->I()Z

    move-result v0

    return v0
.end method

.method private U()I
    .locals 1

    invoke-static {}, Lcom/avg/tuneup/j;->o()I

    move-result v0

    return v0
.end method

.method static synthetic U(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->J()I

    move-result v0

    return v0
.end method

.method private V()I
    .locals 3

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->U()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/avg/tuneup/battery/c;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/avg/tuneup/battery/c;->b:[I

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

.method static synthetic V(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic W(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private W()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_notify_on:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/d;->dlg_ic_notify_low_battery:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/avg/ui/general/b/e;

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->V()I

    move-result v3

    iget-object v4, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/a/b;->battery_save_power_threshold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->V()I

    move-result v2

    new-instance v3, Lcom/avg/tuneup/battery/g;

    invoke-direct {v3, p0}, Lcom/avg/tuneup/battery/g;-><init>(Lcom/avg/tuneup/battery/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic X(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private X()Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method private Y()I
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic Y(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic Z(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private Z()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->c:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->c:Landroid/net/NetworkInfo;

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

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->connected_to:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->authenticating:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->connecting:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->disconnected:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->disconnecting:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->failed:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->idle:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->obtaining_ip:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->scanning:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->suspended:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->unknown:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

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

.method static synthetic a(Lcom/avg/tuneup/battery/c;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/c;->c:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->f:Lcom/avg/tuneup/battery/l;

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/c;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/c;->a(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/battery/c;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->h(Z)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/c;ZLcom/avg/tuneup/battery/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/battery/c;->a(ZLcom/avg/tuneup/battery/o;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method private a(ZLcom/avg/tuneup/battery/o;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p2, Lcom/avg/tuneup/battery/o;->e:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/battery/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_auto_brightnes:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->J()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/battery/c;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p2, Lcom/avg/tuneup/battery/o;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/battery/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_screen_brightnes:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->J()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/battery/c;->b(I)V

    goto :goto_0
.end method

.method static synthetic aa(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->M()I

    move-result v0

    return v0
.end method

.method private aa()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

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

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/battery/c;->a(Landroid/content/Intent;)V

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

.method private ab()I
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic ab(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic ac(Lcom/avg/tuneup/battery/c;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ac()Z
    .locals 2

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ab()I

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

.method private ad()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic ad(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private ae()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ad()I

    move-result v0

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avg/a/b;->battery_save_ringer_options:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method static synthetic ae(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ah()Z

    move-result v0

    return v0
.end method

.method static synthetic af(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private af()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_ringer:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/d;->dlg_ic_ringer:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/avg/ui/general/b/e;

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ad()I

    move-result v3

    iget-object v4, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/a/b;->battery_save_ringer_options:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ad()I

    move-result v2

    new-instance v3, Lcom/avg/tuneup/battery/h;

    invoke-direct {v3, p0}, Lcom/avg/tuneup/battery/h;-><init>(Lcom/avg/tuneup/battery/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic ag(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private ag()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/avg/a/f;->dialog_volume:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_0
    sget v1, Lcom/avg/a/e;->cb_use_ringtone:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v6, Lcom/avg/tuneup/battery/i;

    invoke-direct {v6, p0, v5}, Lcom/avg/tuneup/battery/i;-><init>(Lcom/avg/tuneup/battery/c;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lcom/avg/a/e;->sb_ringtone:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    sget v1, Lcom/avg/a/e;->sb_media:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    sget v1, Lcom/avg/a/e;->sb_notification:I

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

    sget v1, Lcom/avg/a/e;->tv_notification:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/avg/a/e;->sb_alarm:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    sget v1, Lcom/avg/a/e;->sb_system:I

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

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_volume:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/d;->dlg_ic_volume:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/g;->ok:I

    new-instance v2, Lcom/avg/tuneup/battery/j;

    invoke-direct {v2, p0, v5}, Lcom/avg/tuneup/battery/j;-><init>(Lcom/avg/tuneup/battery/c;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/g;->cancel:I

    new-instance v2, Lcom/avg/tuneup/battery/k;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/battery/k;-><init>(Lcom/avg/tuneup/battery/c;)V

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

.method static synthetic ah(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private ah()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

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

.method static synthetic ai(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic aj(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic ak(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->P()V

    return-void
.end method

.method static synthetic al(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic am(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic an(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic ao(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic ap(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/avg/tuneup/battery/c;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->i(Z)I

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/battery/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/battery/c;)[I
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    return-object v0
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget-object v2, Lcom/avg/tuneup/battery/c;->a:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic c(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->W()V

    return-void
.end method

.method static synthetic c(Lcom/avg/tuneup/battery/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/avg/tuneup/battery/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->f(Z)V

    return-void
.end method

.method static synthetic d(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/avg/tuneup/battery/c;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(I)V
    .locals 8

    const/16 v7, 0x2af8

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/avg/tuneup/battery/c;->b:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/avg/tuneup/j;->g(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->T()Z

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/avg/tuneup/battery/c;->g(Z)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "__SAD"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v4, v7, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v3, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v3, v0}, Lcom/avg/ui/general/a/a;->c(Z)V

    :cond_0
    iget-object v4, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v5, "power_saving_options"

    const-string v6, "notify_on_low_battery"

    if-eqz v0, :cond_2

    const-string v3, "on"

    :goto_1
    invoke-static {v4, v5, v6, v3, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "__SAD"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v7, v2, v1}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v3, "off"

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/avg/tuneup/battery/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->a(Z)V

    return-void
.end method

.method private e(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->unknown:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turned_on:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->turning_of:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->K()V

    return-void
.end method

.method static synthetic e(Lcom/avg/tuneup/battery/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->b(I)V

    return-void
.end method

.method static synthetic e(Lcom/avg/tuneup/battery/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1, v0}, Lcom/avg/ui/general/a/a;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/c;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private f(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v2, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

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

.method static synthetic f(Lcom/avg/tuneup/battery/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/c;->j(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->aa()V

    return-void
.end method

.method private g(Z)V
    .locals 1

    invoke-static {p1}, Lcom/avg/tuneup/j;->e(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avg/tuneup/j;->h(I)V

    return-void
.end method

.method static synthetic h(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/avg/tuneup/battery/c;->i(Z)I

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private i(Z)I
    .locals 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

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

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic i(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->a()V

    return-void
.end method

.method static synthetic j(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private j(Z)V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

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

.method static synthetic k(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->af()V

    return-void
.end method

.method static synthetic l(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ag()V

    return-void
.end method

.method static synthetic n(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->V()I

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic u(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->X()Z

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/avg/tuneup/battery/c;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lcom/avg/tuneup/battery/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->Y()I

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic y(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic z(Lcom/avg/tuneup/battery/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/battery/c;->ac()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/avg/a/f;->listview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/avg/a/e;->list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_save_settings:I

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->performance_battery:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/avg/tuneup/battery/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0xb

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/avg/tuneup/battery/l;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/avg/tuneup/battery/l;-><init>(Lcom/avg/tuneup/battery/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->f:Lcom/avg/tuneup/battery/l;

    return-void

    :cond_0
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->c:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    goto :goto_0

    :cond_3
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/avg/tuneup/battery/c;->e:[I

    goto :goto_0

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
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_4
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

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->f:Lcom/avg/tuneup/battery/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/avg/tuneup/battery/e;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/battery/e;-><init>(Lcom/avg/tuneup/battery/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public r()V
    .locals 6

    invoke-super {p0}, Lcom/avg/tuneup/h;->r()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->f:Lcom/avg/tuneup/battery/l;

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->h:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/avg/tuneup/battery/c;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "power_saving_options"

    const-string v3, "opened_from_notification"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Lcom/avg/tuneup/h;->s()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/battery/c;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
