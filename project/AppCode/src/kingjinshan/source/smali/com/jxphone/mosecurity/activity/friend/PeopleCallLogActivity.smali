.class public final Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;
.super Lcom/jxphone/mosecurity/activity/TabContactActivity;
.source "PeopleCallLogActivity.java"


# static fields
.field private static final l:I


# instance fields
.field private m:Lcom/jxphone/mosecurity/logic/a/g;

.field private n:Lcom/jxphone/mosecurity/c/b;

.field private o:Landroid/widget/ListView;

.field private p:Z

.field private final q:Landroid/os/Handler;

.field private final r:Lcom/keniu/security/e/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->p:Z

    .line 47
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/bd;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/bd;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->q:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/keniu/security/e/a;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->q:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/keniu/security/e/a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->r:Lcom/keniu/security/e/a;

    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->p()V

    return-void
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Lcom/jxphone/mosecurity/logic/a/g;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m:Lcom/jxphone/mosecurity/logic/a/g;

    return-object v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    .line 98
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    .line 100
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m:Lcom/jxphone/mosecurity/logic/a/g;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->r:Lcom/keniu/security/e/a;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(Lcom/keniu/security/e/c;)V

    .line 106
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bf;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bf;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m:Lcom/jxphone/mosecurity/logic/a/g;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(Lcom/jxphone/mosecurity/c/b;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 113
    :cond_0
    const v0, 0x7f0b0449

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->a(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o()V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o:Landroid/widget/ListView;

    new-instance v2, Lcom/jxphone/mosecurity/activity/a/f;

    iget-boolean v3, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->i:Z

    invoke-direct {v2, p0, v0, v3}, Lcom/jxphone/mosecurity/activity/a/f;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m()V

    goto :goto_0
.end method

.method private q()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/be;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/be;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V

    .line 148
    const v1, 0x7f0b0674

    invoke-static {p0, v1, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bf;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bf;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 125
    const/high16 v0, 0x7f0c

    return v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->o()V

    .line 77
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->p()V

    .line 78
    return-void
.end method

.method protected final k()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f030098

    return v0
.end method

.method protected final n()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0b064b

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0b061f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m:Lcom/jxphone/mosecurity/logic/a/g;

    .line 64
    const-string v1, "need_check_pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->p:Z

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->p:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->g()V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->f()V

    goto :goto_0
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/be;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/be;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V

    const v1, 0x7f0b0674

    invoke-static {p0, v1, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->m:Lcom/jxphone/mosecurity/logic/a/g;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->r:Lcom/keniu/security/e/a;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->b(Lcom/keniu/security/e/c;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/b;->a([Lcom/jxphone/mosecurity/c/b;)V

    .line 85
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->n:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->showDialog(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7f080416
        :pswitch_0
    .end packed-switch
.end method
