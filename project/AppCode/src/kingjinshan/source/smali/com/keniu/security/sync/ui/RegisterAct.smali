.class public Lcom/keniu/security/sync/ui/RegisterAct;
.super Lcom/keniu/security/sync/ui/HelperBaseTitleAct;
.source "RegisterAct.java"


# static fields
.field private static final p:Z = true


# instance fields
.field a:Landroid/view/View$OnFocusChangeListener;

.field b:Landroid/view/View$OnFocusChangeListener;

.field private c:Landroid/widget/AutoCompleteTextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->i:Z

    .line 42
    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->j:Z

    .line 43
    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->k:Z

    .line 240
    new-instance v0, Lcom/keniu/security/sync/ui/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/n;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->a:Landroid/view/View$OnFocusChangeListener;

    .line 254
    new-instance v0, Lcom/keniu/security/sync/ui/o;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/o;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->b:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->f:Landroid/widget/Button;

    return-object v0
.end method

.method protected static a()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/RegisterAct;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/keniu/security/sync/ui/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/p;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/keniu/security/sync/ui/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/p;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/keniu/security/sync/ui/RegisterAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->k:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 235
    const v0, 0x7f0b086d

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 238
    :goto_0
    return-void

    .line 212
    :sswitch_0
    const v0, 0x7f0b0219

    const v1, 0x7f0b085c

    invoke-static {p0, v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    .line 213
    invoke-static {}, Lcom/keniu/security/sync/a;->a()V

    .line 214
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/a;->a(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->h:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 218
    :sswitch_1
    const v0, 0x7f0b0876

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 221
    :sswitch_2
    const v0, 0x7f0b086e

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 224
    :sswitch_3
    const v0, 0x7f0b086f

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 227
    :sswitch_4
    const v0, 0x7f0b085d

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 230
    :sswitch_5
    const v0, 0x7f0b0860

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_3
        -0xa -> :sswitch_2
        -0x4 -> :sswitch_1
        0x0 -> :sswitch_0
        0x3fd -> :sswitch_4
        0x3ff -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 49
    const v0, 0x7f030085

    const v1, 0x7f0b0841

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(Landroid/os/Bundle;II)V

    .line 52
    new-instance v0, Lcom/keniu/security/sync/j;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;B)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->h:Landroid/os/Handler;

    .line 54
    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->f:Landroid/widget/Button;

    .line 55
    const v0, 0x7f08023f

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    .line 56
    const v0, 0x7f080231

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->d:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->e:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->g:Landroid/widget/CheckBox;

    .line 60
    const v0, 0x7f080244

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->l:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->b:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/keniu/security/sync/ui/j;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/j;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/keniu/security/sync/ui/k;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/k;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->f:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/sync/ui/l;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/l;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/keniu/security/sync/ui/m;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/m;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    invoke-static {p0}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 118
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/RegisterAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    const-string v0, ">>>>> on destroy"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->m:Ljava/lang/String;

    .line 151
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onDestroy()V

    .line 152
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 140
    const-string v0, ">>>>> on pause"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->m:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->n:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->o:Ljava/lang/String;

    .line 144
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onPause()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 128
    const-string v0, ">>>>> on resume"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->i:Z

    .line 130
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->c:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/keniu/security/sync/ui/RegisterAct;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/RegisterAct;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onResume()V

    .line 134
    return-void
.end method
