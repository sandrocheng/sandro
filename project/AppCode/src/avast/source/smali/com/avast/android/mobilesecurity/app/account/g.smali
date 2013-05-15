.class Lcom/avast/android/mobilesecurity/app/account/g;
.super Landroid/os/AsyncTask;
.source "AntivirusActivityHelper.java"


# instance fields
.field a:Landroid/content/ContentResolver;

.field b:Lcom/avast/android/generic/internet/c/a/av;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/internet/c/a/av;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/account/g;->a:Landroid/content/ContentResolver;

    .line 96
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/account/g;->b:Lcom/avast/android/generic/internet/c/a/av;

    .line 97
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 101
    aget-object v0, p1, v10

    .line 102
    aget-object v1, p1, v11

    .line 104
    const-string v2, "uri= ?"

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 107
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 108
    const-string v5, "date"

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v3, "uri"

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "virus_name"

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "scan_type"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/account/g;->b:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/g;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/n;->a()Landroid/net/Uri;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/String;

    aput-object v0, v5, v10

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/account/g;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
