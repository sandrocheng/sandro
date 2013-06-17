.class public Lcom/antivirus/ui/main/HandheldMainActivity;
.super Lcom/antivirus/ui/a;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field public n:Lcom/antivirus/a;

.field private o:Lcom/avg/toolkit/e/a;

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/HashMap;

.field private v:Lcom/avg/ui/general/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    new-instance v0, Lcom/antivirus/ui/b/a/b;

    invoke-direct {v0}, Lcom/antivirus/ui/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    return-void
.end method

.method private k()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    invoke-virtual {v0}, Lcom/antivirus/a;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v2

    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v3

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(ZIILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v2

    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v3

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(ZIILjava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v2, 0x7f09014d

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f09014d

    invoke-static {p0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v2, 0x7f0900f7

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900f7

    invoke-static {p0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v1, 0x7f090010

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f090010

    invoke-static {p0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->l:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v2, 0x7f090020

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f090020

    invoke-static {p0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v1, 0x7f090001

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const v1, 0x7f090001

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    const-string v0, "category_app_landing"

    const-string v1, "action_menu_opened"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->n:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->m:Z

    if-eqz v0, :cond_f

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v2, 0x7f09002e

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f09002e

    invoke-static {p0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->p:Ljava/util/ArrayList;

    const v2, 0x7f090001

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const v2, 0x7f090001

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f09014d

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_6
    :goto_3
    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f0900f7

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v5, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f090010

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v6, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->l:Z

    if-nez v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f090020

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_7
    check-cast p1, Landroid/view/Menu;

    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f090001

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->n:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->m:Z

    if-eqz v0, :cond_6

    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f09002e

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const v1, 0x7f09014d

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    :cond_b
    :goto_4
    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const v1, 0x7f0900f7

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const v1, 0x7f090010

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v6, v6, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->l:Z

    if-nez v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const v1, 0x7f090020

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v3, v3, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    :cond_c
    check-cast p1, Lcom/avg/ui/general/c/f;

    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f090001

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->n:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->m:Z

    if-eqz v0, :cond_b

    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    const v1, 0x7f09002e

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    invoke-direct {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->k()V

    const-string v0, "AntivirusMainScreenFragment"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/HandheldMainActivity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/c;

    iget-boolean v1, v0, Lcom/antivirus/ui/main/c;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/main/c;->F()Z

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v2}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/core/scanners/h;)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/avg/ui/general/c/f;

    invoke-direct {v0, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/avg/ui/general/c/f;->a()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->d(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    iget-object v1, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v1, v1, Lcom/avg/toolkit/e/a;->l:Z

    invoke-interface {v0, p0, v1}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->e(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const-string v0, "AntivirusMainScreenFragment"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/HandheldMainActivity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/main/c;->K()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09014d

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f09002e

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0900f7

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f090010

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f090020

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    iget-object v1, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->o:Lcom/avg/toolkit/e/a;

    iget-boolean v1, v1, Lcom/avg/toolkit/e/a;->l:Z

    invoke-interface {v0, p0, v1}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    const v1, 0x7f090001

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/HandheldMainActivity;->v:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/antivirus/ui/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/HandheldMainActivity;->setContentView(I)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/antivirus/ui/main/c;

    invoke-direct {v0}, Lcom/antivirus/ui/main/c;-><init>()V

    const v1, 0x7f0800d1

    const-string v2, "AntivirusMainScreenFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "AntivirusMainScreenFragment"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/HandheldMainActivity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/ui/main/c;->a(ILandroid/view/KeyEvent;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/HandheldMainActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "AntivirusMainScreenFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/main/c;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/main/HandheldMainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/main/HandheldMainActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    return v0
.end method
