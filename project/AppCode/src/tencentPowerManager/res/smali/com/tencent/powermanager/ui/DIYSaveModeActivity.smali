.class public Lcom/tencent/powermanager/ui/DIYSaveModeActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb;

.field private d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

.field private e:Lbf;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c:Lb;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->g:Z

    new-instance v0, Lck;

    invoke-direct {v0, p0}, Lck;-><init>(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->h:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget v0, v0, Lbf;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget v1, v1, Lbf;->c:I

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lb;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c:Lb;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->g:Z

    return v0
.end method

.method public static synthetic f(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lcom/tencent/powermanager/uilib/DIYHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    return-object v0
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x3e8

    const v7, 0x7f06000c

    const-wide/32 v5, 0xea60

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    cmp-long v1, p1, v5

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v1, p1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x36ee80

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v1, p1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    rem-long v1, p1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v1, p1, v5

    div-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    invoke-virtual {v0}, Lbf;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const v0, 0x7f06005a

    invoke-static {p0, v0}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->setModeName(Ljava/lang/String;)V

    :goto_0
    const v0, 0xc360

    invoke-static {v0}, Lab;->a(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ls;->a()Ls;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    invoke-virtual {v1}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn;

    invoke-direct {v2, p0}, Lcn;-><init>(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)V

    invoke-virtual {v0, v1, v2}, Ls;->a(Ljava/lang/String;Ls$a;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lbf;

    invoke-direct {v2}, Lbf;-><init>()V

    const-string v3, "_id"

    iget v4, v2, Lbf;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lbf;->a:I

    const-string v3, "mode_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbf;->b:Ljava/lang/String;

    const-string v3, "brightness"

    iget v4, v2, Lbf;->c:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lbf;->c:I

    const-string v3, "screen_time"

    iget v4, v2, Lbf;->d:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lbf;->d:I

    const-string v3, "animation"

    iget v4, v2, Lbf;->e:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lbf;->e:I

    const-string v3, "wifi_state"

    iget-boolean v4, v2, Lbf;->f:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->f:Z

    const-string v3, "network_state"

    iget-boolean v4, v2, Lbf;->g:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->g:Z

    const-string v3, "bluetooth_state"

    iget-boolean v4, v2, Lbf;->h:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->h:Z

    const-string v3, "auto_sync"

    iget-boolean v4, v2, Lbf;->i:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->i:Z

    const-string v3, "vibrate"

    iget-boolean v4, v2, Lbf;->j:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->j:Z

    const-string v3, "haptic_feedback"

    iget-boolean v4, v2, Lbf;->k:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lbf;->k:Z

    const-string v3, "airplane_state"

    iget v4, v2, Lbf;->l:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lbf;->l:I

    iput-object v2, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    const-string v1, "savemode_is_new_ornot"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    if-nez v0, :cond_1

    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    :cond_1
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->setContentView(I)V

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/powermanager/uilib/DIYHeaderView;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/DIYHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v8, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    invoke-direct {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->c:Ljava/lang/String;

    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v7, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget v1, v1, Lbf;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->c:Ljava/lang/String;

    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v7, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->f:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f06004e

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->g:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->h:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v8, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget v2, v2, Lbf;->e:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lbg;->c:Ljava/lang/String;

    iput v7, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->i:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->j:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    iput-boolean v5, v0, Lbg;->d:Z

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-boolean v1, v1, Lbf;->k:Z

    iput-boolean v1, v0, Lbg;->e:Z

    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->b:Ljava/lang/String;

    iput v6, v0, Lbg;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d:Lcom/tencent/powermanager/uilib/DIYHeaderView;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e:Lbf;

    iget-object v1, v1, Lbf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->setModeName(Ljava/lang/String;)V

    new-instance v0, Lb;

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lb;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c:Lb;

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c:Lb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c:Lb;

    invoke-virtual {v0}, Lb;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
