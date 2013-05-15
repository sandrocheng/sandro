.class public abstract Lcom/dolphin/browser/addons/ai;
.super Landroid/os/Binder;
.source "IAddonConfig.java"

# interfaces
.implements Lcom/dolphin/browser/addons/ah;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p0, p0, v0}, Lcom/dolphin/browser/addons/ai;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->a()I

    move-result v0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 52
    goto :goto_0

    .line 56
    :sswitch_2
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->b()Lcom/dolphin/browser/addons/af;

    move-result-object v2

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/dolphin/browser/addons/af;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 64
    :sswitch_3
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->c()Lcom/dolphin/browser/addons/bm;

    move-result-object v2

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/dolphin/browser/addons/bm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->d()Lcom/dolphin/browser/addons/bk;

    move-result-object v2

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/dolphin/browser/addons/bk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 76
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->e()Lcom/dolphin/browser/addons/aj;

    move-result-object v2

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/dolphin/browser/addons/aj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->f()Lcom/dolphin/browser/addons/az;

    move-result-object v2

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/dolphin/browser/addons/az;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 92
    goto/16 :goto_0

    .line 96
    :sswitch_7
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->g()Lcom/dolphin/browser/addons/ao;

    move-result-object v2

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/dolphin/browser/addons/ao;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 100
    goto/16 :goto_0

    .line 104
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/bw;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/bv;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/ai;->a(Lcom/dolphin/browser/addons/bv;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 109
    goto/16 :goto_0

    .line 113
    :sswitch_9
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/bq;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/bp;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/ai;->a(Lcom/dolphin/browser/addons/bp;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 118
    goto/16 :goto_0

    .line 122
    :sswitch_a
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/y;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/ai;->a(Lcom/dolphin/browser/addons/x;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 127
    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/ai;->a(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 136
    goto/16 :goto_0

    .line 140
    :sswitch_c
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ai;->h()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 143
    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
