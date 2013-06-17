.class public abstract Lcom/antivirus/ui/callmessagefilter/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/widget/CheckBox;

.field protected b:Landroid/widget/CheckBox;

.field protected c:Landroid/widget/CheckBox;

.field protected d:Landroid/widget/CheckBox;

.field protected e:Landroid/widget/CheckBox;

.field protected f:Landroid/widget/CheckBox;

.field protected g:Landroid/widget/EditText;

.field protected h:Landroid/widget/CheckBox;

.field protected i:Landroid/view/View;

.field private j:Landroid/content/Context;

.field private k:Lcom/antivirus/core/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->j:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data15"

    aput-object v3, v2, v6

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "data15"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private a()Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/b/d;)V
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->k:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->k:Lcom/antivirus/core/b;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v1}, Lcom/antivirus/c;->i(Z)V

    const-string v0, "protection"

    const-string v1, "scan_sms"

    const-string v2, "on"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x7d0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 13

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/j;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v3

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/j;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v4, v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "call_message_blocker"

    const-string v1, "call_message_blocker_default_sms_set"

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {p2, v0, v1, v2, v6}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->i(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v6, Lcom/antivirus/ui/callmessagefilter/n;

    move-object v7, p0

    move-object v8, p2

    move-object v9, p1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/antivirus/ui/callmessagefilter/n;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, p2, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/b/d;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/j;Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method

.method private b()Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/a/d;->a:Lcom/antivirus/ui/callmessagefilter/a/d;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f08008a

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/j;->j:Landroid/content/Context;

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->k:Lcom/antivirus/core/b;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200d1

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200c7

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200ca

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/u;

    new-array v3, v7, [Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/j;->c:Landroid/widget/CheckBox;

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v3}, Lcom/antivirus/ui/callmessagefilter/u;-><init>(Lcom/antivirus/ui/callmessagefilter/j;[Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/p;

    new-array v3, v6, [Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    aput-object v4, v3, v2

    invoke-direct {v1, p0, v3}, Lcom/antivirus/ui/callmessagefilter/p;-><init>(Lcom/antivirus/ui/callmessagefilter/j;[Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200cf

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901eb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200cd

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200ce

    invoke-direct {p0, v0, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/q;

    const-string v3, "call_message_blocker_silent_mode"

    new-array v4, v8, [Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    aput-object v5, v4, v7

    invoke-direct {v1, p0, v3, v4}, Lcom/antivirus/ui/callmessagefilter/q;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Ljava/lang/String;[Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/q;

    const-string v3, "call_message_blocker_rejected"

    new-array v4, v8, [Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    aput-object v5, v4, v7

    invoke-direct {v1, p0, v3, v4}, Lcom/antivirus/ui/callmessagefilter/q;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Ljava/lang/String;[Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->g:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/antivirus/c;->u()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x7f0901fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v3, 0x7f080085

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/j;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->f:Landroid/widget/CheckBox;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/o;

    new-array v4, v7, [Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->e:Landroid/widget/CheckBox;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/j;->d:Landroid/widget/CheckBox;

    aput-object v5, v4, v6

    invoke-direct {v1, p0, v3, v4}, Lcom/antivirus/ui/callmessagefilter/o;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/view/View;[Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/j;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09000d

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/k;

    invoke-direct {v3, p0, p2, p1, p4}, Lcom/antivirus/ui/callmessagefilter/k;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09000e

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/l;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/callmessagefilter/l;-><init>(Lcom/antivirus/ui/callmessagefilter/j;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/j;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/m;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/callmessagefilter/m;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0200d5

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p4, p1}, Lcom/antivirus/ui/callmessagefilter/v;->a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/d;)V

    invoke-interface {p2, p3, p1}, Lcom/antivirus/ui/callmessagefilter/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/d;)V

    :cond_0
    return-void
.end method
