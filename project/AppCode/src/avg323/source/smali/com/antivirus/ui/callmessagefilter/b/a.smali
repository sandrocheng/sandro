.class public Lcom/antivirus/ui/callmessagefilter/b/a;
.super Lcom/antivirus/ui/callmessagefilter/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f080093

    invoke-direct {p0, p1, v0, p2}, Lcom/antivirus/ui/callmessagefilter/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/b/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/antivirus/ui/callmessagefilter/b/d;->valueOf(Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected a(Landroid/view/View;Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 2

    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/view/View;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/b/a;->a(Landroid/view/View;Lcom/antivirus/ui/callmessagefilter/b/b;)V

    return-void
.end method
