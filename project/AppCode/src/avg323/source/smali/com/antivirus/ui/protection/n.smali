.class Lcom/antivirus/ui/protection/n;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/protection/a;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/n;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/n;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/n;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->g(Lcom/antivirus/ui/protection/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->g(Lcom/antivirus/ui/protection/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/antivirus/ui/protection/n;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/n;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->g(Lcom/antivirus/ui/protection/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->g(Lcom/antivirus/ui/protection/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)[Ljava/io/File;
    .locals 8

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/Music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->l(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_3
    const-string v0, "/Video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_5
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->m(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    if-eqz v6, :cond_0

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_6
    throw v0

    :catch_7
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v0, v6

    goto/16 :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/ui/protection/a;->a(Lcom/antivirus/ui/protection/a;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/antivirus/ui/protection/n;->notifyDataSetChanged()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/ui/protection/a;->a(Lcom/antivirus/ui/protection/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/n;->b(Ljava/io/File;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/n;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/antivirus/ui/protection/n;->e:Ljava/lang/String;

    const-string v0, "/Music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/Video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/n;->c(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/antivirus/ui/protection/n;->notifyDataSetChanged()V

    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/antivirus/ui/protection/o;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/o;-><init>(Lcom/antivirus/ui/protection/n;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/antivirus/ui/protection/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    array-length v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f020105

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/n;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/antivirus/ui/protection/q;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/q;-><init>(Lcom/antivirus/ui/protection/n;)V

    const v0, 0x7f08005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antivirus/ui/protection/q;->a:Landroid/widget/TextView;

    const v0, 0x7f0800cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/antivirus/ui/protection/q;->c:Landroid/widget/ImageView;

    const v0, 0x7f0800cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/antivirus/ui/protection/p;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/protection/p;-><init>(Lcom/antivirus/ui/protection/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/antivirus/ui/protection/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/antivirus/ui/protection/q;->a:Landroid/widget/TextView;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/antivirus/ui/protection/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/protection/q;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v1, v0, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/n;->c:[Ljava/io/File;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/antivirus/ui/protection/q;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/antivirus/ui/protection/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/antivirus/ui/protection/n;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v2}, Lcom/antivirus/ui/protection/a;->f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/antivirus/ui/protection/q;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/antivirus/ui/protection/q;->b:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
