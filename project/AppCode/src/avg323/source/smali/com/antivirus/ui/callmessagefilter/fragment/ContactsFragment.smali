.class public Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;
.super Lcom/antivirus/ui/callmessagefilter/fragment/a;


# instance fields
.field private final ah:[Ljava/lang/String;

.field private ai:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ah:[Ljava/lang/String;

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/util/Map;)Lcom/antivirus/ui/callmessagefilter/contacts/g;
    .locals 7

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/antivirus/c;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->j(Ljava/lang/String;)V

    :cond_0
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v1, v0}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "photo_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/antivirus/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    int-to-long v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/contacts/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a(Z)V

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-direct {v2, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V

    return-object v0

    :cond_3
    new-instance v1, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 10

    const/4 v7, 0x0

    :try_start_0
    const-string v1, "display_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "phone_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ah:[Ljava/lang/String;

    const-string v4, "display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const-string v6, "display_name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/antivirus/c;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/antivirus/c;->j(Ljava/lang/String;)V

    :cond_1
    invoke-static {v9, v1}, Lcom/antivirus/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-object v7, v0

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v2, v9

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/antivirus/ui/callmessagefilter/contacts/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->g:Z

    if-eqz v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v8, p3}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Landroid/database/Cursor;Ljava/util/Map;)Lcom/antivirus/ui/callmessagefilter/contacts/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v8

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v7

    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v7

    goto :goto_2
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(ZLjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->k()Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a(Lcom/antivirus/ui/callmessagefilter/a/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b(I)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->k()Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a(Lcom/antivirus/ui/callmessagefilter/b/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b(I)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->k()Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b(I)V

    :cond_2
    return-void
.end method

.method private a(ZLjava/util/Map;)V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ah:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "display_name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->g:Z

    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v8, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Landroid/database/Cursor;Ljava/util/Map;)Lcom/antivirus/ui/callmessagefilter/contacts/g;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v8

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/antivirus/ui/callmessagefilter/a;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/fragment/o;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/o;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/antivirus/c;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/antivirus/c;->j(Ljava/lang/String;)V

    :cond_5
    invoke-static {v1, v2}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v6, v2

    invoke-direct/range {v1 .. v6}, Lcom/antivirus/ui/callmessagefilter/contacts/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/antivirus/ui/callmessagefilter/a;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v7

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v2

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v2, v7

    goto/16 :goto_1
.end method


# virtual methods
.method protected F()Lcom/antivirus/ui/callmessagefilter/v;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/q;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/q;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;)V

    return-object v0
.end method

.method protected J()Lcom/antivirus/ui/callmessagefilter/j;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/contacts/f;

    invoke-direct {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/f;-><init>()V

    return-object v0
.end method

.method protected K()V
    .locals 5

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "use_named_filter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/antivirus/core/b/a/b;->b()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/antivirus/callmessagefilter/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v2, v4}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0, v4}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(ZLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected L()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/contacts/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    :cond_0
    return-void
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/contacts/g;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;
    .locals 1

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->k()Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;
    .locals 1

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/contacts/g;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Landroid/support/v4/a/c;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Landroid/support/v4/a/c;Ljava/lang/Void;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Landroid/support/v4/a/c;Ljava/lang/Void;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "use_named_filter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/p;

    invoke-direct {v1, p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/p;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;Landroid/support/v4/app/i;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ai:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ai:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/b;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a:Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->q()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c(I)V

    iget-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->q()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c:Lcom/antivirus/ui/callmessagefilter/a;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->ai:Ljava/lang/String;

    goto :goto_0
.end method

.method protected synthetic d(I)Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->f(I)Lcom/antivirus/ui/callmessagefilter/fragment/r;

    move-result-object v0

    return-object v0
.end method

.method protected e(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(I)Lcom/antivirus/ui/callmessagefilter/fragment/r;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/r;

    move-result-object v0

    return-object v0
.end method
