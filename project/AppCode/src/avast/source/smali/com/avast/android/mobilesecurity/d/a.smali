.class public Lcom/avast/android/mobilesecurity/d/a;
.super Lcom/avast/android/generic/notification/j;
.source "MobileSecurityNotificationManager.java"


# static fields
.field private static a:Lcom/avast/android/generic/notification/j;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/avast/android/mobilesecurity/a;->a:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/notification/j;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/avast/android/generic/notification/j;
    .locals 1
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/avast/android/mobilesecurity/d/a;->a:Lcom/avast/android/generic/notification/j;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/avast/android/mobilesecurity/d/a;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/d/a;->a:Lcom/avast/android/generic/notification/j;

    .line 24
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/d/a;->a:Lcom/avast/android/generic/notification/j;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    const v0, 0x7f0200e2

    .line 29
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    return v0

    .line 35
    :pswitch_1
    const v0, 0x7f020118

    goto :goto_0

    .line 37
    :pswitch_2
    const v0, 0x7f02010f

    goto :goto_0

    .line 40
    :pswitch_3
    const v0, 0x7f020110

    goto :goto_0

    .line 42
    :pswitch_4
    const v0, 0x7f020119

    goto :goto_0

    .line 46
    :pswitch_5
    const v0, 0x7f020111

    goto :goto_0

    .line 48
    :pswitch_6
    const v0, 0x7f0200fa

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0002
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/StartActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/avast/android/mobilesecurity/app/home/StartActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0c01d4

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0c03d7

    return v0
.end method
