.class final Lcom/avast/android/mobilesecurity/app/locking/core/a;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    new-instance v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-direct {v3}, Lcom/avast/android/mobilesecurity/app/locking/core/App;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->g:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->h:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->j:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->k:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->o:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->p:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->q:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, v3, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    .line 212
    return-object v3

    :cond_0
    move v0, v2

    .line 200
    goto :goto_0

    :cond_1
    move v0, v2

    .line 202
    goto :goto_1

    :cond_2
    move v0, v2

    .line 203
    goto :goto_2

    :cond_3
    move v1, v2

    .line 210
    goto :goto_3
.end method

.method public a(I)[Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 1
    .parameter

    .prologue
    .line 216
    new-array v0, p1, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/a;->a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/a;->a(I)[Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    return-object v0
.end method
