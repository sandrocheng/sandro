.class public Lcom/keniu/security/protection/ui/PreventTheftMainActivity;
.super Landroid/app/Activity;
.source "PreventTheftMainActivity.java"


# static fields
.field private static final b:Ljava/lang/String; = "VMAP_ITEM_IMAGE"

.field private static final c:Ljava/lang/String; = "VMAP_ITEM_TITLE"


# instance fields
.field a:Z

.field private d:Ljava/util/List;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/SimpleAdapter;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private final p:Landroid/widget/AdapterView$OnItemClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Lcom/keniu/security/protection/ui/l;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/l;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 107
    new-instance v0, Lcom/keniu/security/protection/ui/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/m;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->q:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/keniu/security/protection/ui/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/n;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 155
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b076c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b076d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->i:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    .line 181
    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    .line 182
    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    .line 183
    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->l:Landroid/widget/LinearLayout;

    .line 184
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07dd

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07db

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07da

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07d9

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07dc

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 231
    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 232
    const v1, 0x7f0b07b8

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 233
    const v1, 0x7f0b07ba

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/o;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/o;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 243
    const v1, 0x7f0b07b9

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/p;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/p;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 254
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 255
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f03007b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->e:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->p:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->l:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->finish()V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 225
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07dd

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07db

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07da

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07d9

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b07dc

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->d:Ljava/util/List;

    const v3, 0x7f03007c

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "VMAP_ITEM_TITLE"

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string v5, "VMAP_ITEM_IMAGE"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->f:Landroid/widget/SimpleAdapter;

    .line 73
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->f:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v1

    .line 75
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->a:Z

    .line 76
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->m:Landroid/widget/Button;

    .line 77
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->n:Landroid/widget/Button;

    .line 78
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->o:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->n:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->o:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-boolean v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->a:Z

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b076c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/keniu/security/protection/ui/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b07b8

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b07ba

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/o;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/o;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b07b9

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/p;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/p;-><init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 94
    :cond_0
    return-void

    .line 84
    :cond_1
    if-nez v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b076d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->b()V

    goto/16 :goto_0

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x86t 0x0t 0x8t 0x7ft
        0x31t 0x1t 0x8t 0x7ft
    .end array-data
.end method
