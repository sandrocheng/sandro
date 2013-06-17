.class public Lcom/antivirus/ui/settings/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Landroid/content/Context;Z)Landroid/view/View;
    .locals 3

    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/antivirus/ui/settings/a/a;

    invoke-static {}, Lcom/antivirus/ui/settings/a/b;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/antivirus/ui/settings/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/antivirus/ui/settings/a/c;

    invoke-direct {v2, v1, p1}, Lcom/antivirus/ui/settings/a/c;-><init>(Lcom/antivirus/ui/settings/a/a;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Arabic"

    const-string v3, ""

    const v4, 0x7f0200f4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Chinese Simplified"

    const-string v3, ""

    const v4, 0x7f0200f5

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Chinese Traditional"

    const-string v3, ""

    const v4, 0x7f0200f6

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Czech"

    const-string v3, ""

    const v4, 0x7f0200f7

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Dutch"

    const-string v3, ""

    const v4, 0x7f0200f8

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "English"

    const-string v3, ""

    const v4, 0x7f0200f9

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "French"

    const-string v3, ""

    const v4, 0x7f0200fa

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "German"

    const-string v3, ""

    const v4, 0x7f0200fb

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Hebrew"

    const-string v3, ""

    const v4, 0x7f0200fc

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Hindi"

    const-string v3, ""

    const v4, 0x7f0200fd

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Italian"

    const-string v3, ""

    const v4, 0x7f0200fe

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Japanese"

    const-string v3, ""

    const v4, 0x7f0200ff

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Korean"

    const-string v3, ""

    const v4, 0x7f020100

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Polish"

    const-string v3, ""

    const v4, 0x7f020101

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Portuguese"

    const-string v3, ""

    const v4, 0x7f020102

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Russian"

    const-string v3, ""

    const v4, 0x7f020103

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/ui/general/b/c;

    const-string v2, "Spanish"

    const-string v3, ""

    const v4, 0x7f020104

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
