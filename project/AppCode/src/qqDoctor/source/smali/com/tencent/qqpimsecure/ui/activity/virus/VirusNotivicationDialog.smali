.class public Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Z

.field private static b:I


# instance fields
.field private c:Z

.field private d:Lkl;

.field private e:Lacj;

.field private f:Lacj$a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmt;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ListView;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:Lamg;

.field private o:Landroid/content/Context;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    sput v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->c:Z

    iput-object p0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    new-instance v0, Laht;

    invoke-direct {v0, p0}, Laht;-><init>(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->p:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lahu;

    invoke-direct {v1, p0}, Lahu;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    sget v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b:I

    goto :goto_0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    sget v1, Lmt;->a:I

    invoke-virtual {v0, v1}, Lkl;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lkl;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->m:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->l:Landroid/widget/TextView;

    const v1, 0x7f0b02dd

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lamg;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lamg;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->n:Lamg;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->n:Lamg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-static {v0}, Lkl;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->h:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->c:Z

    return v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->finish()V

    return-void
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Lkl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->p:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->c:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6687

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    if-nez v1, :cond_0

    new-instance v1, Lacj;

    invoke-direct {v1, p0}, Lacj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->f:Lacj$a;

    if-nez v1, :cond_1

    new-instance v1, Lahv;

    invoke-direct {v1, p0}, Lahv;-><init>(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->f:Lacj$a;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->f:Lacj$a;

    invoke-virtual {v1, v2}, Lacj;->a(Lacj$a;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    invoke-virtual {v1, v0}, Lacj;->a(Ljava/util/List;)V

    new-instance v1, Lov$a;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0}, Lov$a;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lov$a;->a(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6688

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    sput-boolean v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lkl;

    invoke-direct {v0}, Lkl;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->setContentView(I)V

    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->i:Landroid/widget/ListView;

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    sget v1, Lmt;->a:I

    invoke-virtual {v0, v1}, Lkl;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d:Lkl;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lkl;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->finish()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->e:Lacj;

    invoke-virtual {v0}, Lacj;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->n:Lamg;

    invoke-virtual {v0}, Lamg;->notifyDataSetChanged()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
