.class public Lcom/avast/android/mobilesecurity/app/locking/core/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.android.packageinstaller"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a:Ljava/lang/String;

    .line 29
    const-string v0, "special_uninstall_token"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->b:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.settings"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->c:Ljava/lang/String;

    .line 31
    const-string v0, "com.android.vending"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->d:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/a;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    if-nez v1, :cond_2

    .line 89
    :cond_0
    const-string v1, "COMMON"

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v1

    .line 91
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/App;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 95
    :cond_1
    if-eqz v1, :cond_2

    .line 97
    iget-boolean v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    if-nez v2, :cond_2

    .line 98
    iget-object v2, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;

    .line 99
    iget v2, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    .line 100
    iget-boolean v2, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->j:Z

    iput-boolean v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->j:Z

    .line 101
    iget v2, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->q:I

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->q:I

    .line 102
    iget v2, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->o:I

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->o:I

    .line 103
    iget v1, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->p:I

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->p:I

    .line 107
    :cond_2
    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 119
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 125
    :try_start_0
    new-instance v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/app/locking/core/App;-><init>()V

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    iput-object p1, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 128
    const-string v0, "custom_settings"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    .line 131
    const-string v0, "time_range_enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->j:Z

    .line 133
    const-string v0, "lock_enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v6

    :goto_2
    iput-boolean v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->k:Z

    .line 135
    const-string v0, "password_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    .line 137
    iget v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 138
    const-string v0, "gesture_password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;

    .line 145
    :cond_0
    :goto_3
    const-string v0, "minuteFrom"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->o:I

    .line 147
    const-string v0, "minuteTo"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->p:I

    .line 149
    const-string v0, "days"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_1
    :goto_4
    return-object v2

    :cond_2
    move v0, v7

    .line 128
    goto :goto_0

    :cond_3
    move v0, v7

    .line 131
    goto :goto_1

    :cond_4
    move v0, v7

    .line 133
    goto :goto_2

    .line 140
    :cond_5
    :try_start_1
    iget v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 141
    const-string v0, "text_password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 156
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->g:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->h:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void

    :cond_0
    move v0, v2

    .line 232
    goto :goto_0

    :cond_1
    move v0, v2

    .line 234
    goto :goto_1

    :cond_2
    move v0, v2

    .line 235
    goto :goto_2

    :cond_3
    move v1, v2

    .line 242
    goto :goto_3
.end method
