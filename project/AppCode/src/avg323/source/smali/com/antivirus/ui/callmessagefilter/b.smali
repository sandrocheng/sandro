.class Lcom/antivirus/ui/callmessagefilter/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/d;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/a;Lcom/antivirus/ui/callmessagefilter/d;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/b;->c:Lcom/antivirus/ui/callmessagefilter/a;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/b;->a:Lcom/antivirus/ui/callmessagefilter/d;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/b;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    aget-object v5, p1, v0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data15"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b;->a:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/callmessagefilter/d;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/b;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/b;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
