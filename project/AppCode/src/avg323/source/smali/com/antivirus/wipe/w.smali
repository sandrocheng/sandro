.class Lcom/antivirus/wipe/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    iput-object p2, p0, Lcom/antivirus/wipe/w;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/antivirus/wipe/w;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/wipe/w;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->r(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/wipe/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->u(Lcom/antivirus/wipe/b;)I

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->v(Lcom/antivirus/wipe/b;)I

    move-result v0

    iget-object v1, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->n(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0, v3}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Z)Z

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->w(Lcom/antivirus/wipe/b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/w;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->l(Lcom/antivirus/wipe/b;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->r(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/wipe/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/wipe/w;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->x(Lcom/antivirus/wipe/b;)I

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->v(Lcom/antivirus/wipe/b;)I

    move-result v0

    iget-object v1, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->n(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0, v3}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Z)Z

    iget-object v0, p0, Lcom/antivirus/wipe/w;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->w(Lcom/antivirus/wipe/b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
