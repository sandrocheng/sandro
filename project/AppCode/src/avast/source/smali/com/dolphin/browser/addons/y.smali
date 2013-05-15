.class public abstract Lcom/dolphin/browser/addons/y;
.super Landroid/os/Binder;
.source "BrowserUtil.java"

# interfaces
.implements Lcom/dolphin/browser/addons/x;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/x;
    .locals 2
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/x;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/dolphin/browser/addons/x;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/z;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 56
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/y;->a(J)Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v1}, Lcom/dolphin/browser/addons/BookmarkTreeNode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 69
    :sswitch_2
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 72
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/y;->b(J)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 75
    goto :goto_0

    .line 79
    :sswitch_3
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->a(Lcom/dolphin/browser/addons/BookmarkTreeNode;)J

    move-result-wide v2

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 94
    :sswitch_4
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 99
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/dolphin/browser/addons/y;->a(JJ)J

    move-result-wide v2

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 102
    goto :goto_0

    .line 106
    :sswitch_5
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/y;->c(J)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 111
    goto/16 :goto_0

    .line 115
    :sswitch_6
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    .line 123
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->b(Lcom/dolphin/browser/addons/BookmarkTreeNode;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 125
    goto/16 :goto_0

    .line 129
    :sswitch_7
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/y;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 141
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 152
    :sswitch_9
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/y;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 163
    :sswitch_a
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 171
    goto/16 :goto_0

    .line 175
    :sswitch_b
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    sget-object v0, Lcom/dolphin/browser/addons/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/DownloadInfo;

    .line 183
    :cond_3
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->a(Lcom/dolphin/browser/addons/DownloadInfo;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 189
    :sswitch_c
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/am;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/al;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->a(Lcom/dolphin/browser/addons/al;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 198
    :sswitch_d
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/am;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/al;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->b(Lcom/dolphin/browser/addons/al;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 203
    goto/16 :goto_0

    .line 207
    :sswitch_e
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/am;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/al;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->c(Lcom/dolphin/browser/addons/al;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 212
    goto/16 :goto_0

    .line 216
    :sswitch_f
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/am;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/al;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/y;->d(Lcom/dolphin/browser/addons/al;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 221
    goto/16 :goto_0

    .line 44
    nop

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
