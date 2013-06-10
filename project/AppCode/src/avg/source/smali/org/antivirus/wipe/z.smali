.class final Lorg/antivirus/wipe/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lorg/antivirus/wipe/a;

.field final synthetic c:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;Lorg/antivirus/wipe/a;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    iput-object p2, p0, Lorg/antivirus/wipe/z;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lorg/antivirus/wipe/z;->b:Lorg/antivirus/wipe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/wipe/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    iget-object v1, v1, Lorg/antivirus/wipe/WipeByApp;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/antivirus/wipe/z;->b:Lorg/antivirus/wipe/a;

    iget-object v2, v2, Lorg/antivirus/wipe/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->f(Lorg/antivirus/wipe/WipeByApp;)I

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->g(Lorg/antivirus/wipe/WipeByApp;)I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v1}, Lorg/antivirus/wipe/WipeByApp;->e(Lorg/antivirus/wipe/WipeByApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0, v3}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;Z)Z

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->h(Lorg/antivirus/wipe/WipeByApp;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->c(Lorg/antivirus/wipe/WipeByApp;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    iget-object v1, v1, Lorg/antivirus/wipe/WipeByApp;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/antivirus/wipe/z;->b:Lorg/antivirus/wipe/a;

    iget-object v2, v2, Lorg/antivirus/wipe/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/wipe/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->i(Lorg/antivirus/wipe/WipeByApp;)I

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->g(Lorg/antivirus/wipe/WipeByApp;)I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v1}, Lorg/antivirus/wipe/WipeByApp;->e(Lorg/antivirus/wipe/WipeByApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0, v3}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;Z)Z

    iget-object v0, p0, Lorg/antivirus/wipe/z;->c:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->h(Lorg/antivirus/wipe/WipeByApp;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
