.class public Lcom/tencent/powermanager/ui/SettingsActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lr;

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lb;

.field private e:Lbg;

.field private f:Lbg;

.field private g:Lbg;

.field private h:Lbg;

.field private i:Lbg;

.field private j:Lbg;

.field private k:Lbg;

.field private l:Lbg;

.field private m:Lbg;

.field private n:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->d:Lb;

    new-instance v0, Lcu;

    invoke-direct {v0, p0}, Lcu;-><init>(Lcom/tencent/powermanager/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/ui/SettingsActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->e:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->u()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->f:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->t()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->g:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->q()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->h:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->p()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->i:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->p()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->d:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->j:Lbg;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    invoke-virtual {v1}, Lr;->r()Z

    move-result v1

    iput-boolean v1, v0, Lbg;->e:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->d:Lb;

    invoke-virtual {v0}, Lb;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/powermanager/ui/SettingsActivity;)V
    .locals 6

    const v5, 0x7f080028

    new-instance v1, Lde;

    invoke-direct {v1, p0}, Lde;-><init>(Landroid/content/Context;)V

    const v0, 0x7f060071

    invoke-virtual {v1, v0}, Lde;->setTitle(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v3

    invoke-virtual {v3}, Lr;->o()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    invoke-virtual {v1, v2}, Lde;->a(Landroid/view/View;)V

    const v2, 0x7f060004

    new-instance v4, Lcv;

    invoke-direct {v4, v0, v3, v1}, Lcv;-><init>(Landroid/widget/RadioGroup;Lr;Lde;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v2, v4, v0}, Lde;->a(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lcw;

    invoke-direct {v0, v1}, Lcw;-><init>(Lde;)V

    invoke-virtual {v1, v0}, Lde;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lde;->show()V

    return-void

    :pswitch_0
    const v4, 0x7f080027

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d(Lcom/tencent/powermanager/ui/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "http://pt.3g.qq.com/i/308/"

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->setContentView(I)V

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->a:Lr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->j:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->j:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->j:Lbg;

    iput v4, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->j:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->e:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->e:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->e:Lbg;

    iput v4, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->e:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->f:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->f:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->f:Lbg;

    iput v4, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->f:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->g:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->g:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->g:Lbg;

    iput v4, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->g:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->h:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->h:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->h:Lbg;

    iput v4, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->h:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->i:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->i:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->i:Lbg;

    iput v3, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->i:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->k:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->k:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->k:Lbg;

    iput v3, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->k:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->l:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->l:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->l:Lbg;

    iput v3, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->l:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->m:Lbg;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->m:Lbg;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->m:Lbg;

    iput v3, v0, Lbg;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->m:Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lb;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->d:Lb;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->d:Lb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/SettingsActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/tencent/powermanager/ui/SettingsActivity;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
