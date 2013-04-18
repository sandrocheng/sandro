.class public Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;
.super Landroid/app/Activity;
.source "ServicesSmsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field private h:Landroid/widget/ListView;

.field private i:Lcom/ijinshan/kinghelper/firewall/dx;

.field private j:Lcom/ijinshan/kinghelper/firewall/ek;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/TextView;

.field private o:I

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_sms_param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_sms_address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_sms_address_owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->c:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_sms_array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_group_index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->e:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_extra_number_index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->f:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    .line 60
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    .line 61
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->m:Z

    .line 141
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->o:I

    .line 143
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ds;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/ds;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 241
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    return p1
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->g:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dt;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dt;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 183
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 188
    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 189
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 190
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dt;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dt;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 218
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 219
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    .line 220
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 225
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 226
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v3, "address = ? and type = 1"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->finish()V

    .line 239
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Lcom/ijinshan/kinghelper/firewall/ek;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 244
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    if-ne v0, v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 248
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 250
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 252
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 253
    iget-object v0, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->i:Lcom/ijinshan/kinghelper/firewall/dx;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dx;->notifyDataSetChanged()V

    .line 257
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->b:Lcom/ijinshan/kinghelper/firewall/dq;

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;I)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->m:Z

    .line 260
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->o:I

    return v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Lcom/ijinshan/kinghelper/firewall/dx;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->i:Lcom/ijinshan/kinghelper/firewall/dx;

    return-object v0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    aput-object v0, v1, v2

    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v3, "address = ? and type = 1"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->i:Lcom/ijinshan/kinghelper/firewall/dx;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dx;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->b:Lcom/ijinshan/kinghelper/firewall/dq;

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->m:Z

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b00d5

    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080025

    if-ne v0, v1, :cond_1

    .line 266
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 268
    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 269
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 270
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/du;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/du;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    invoke-virtual {v0, v4, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 276
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 277
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    .line 278
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080024

    if-ne v0, v1, :cond_0

    .line 281
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 282
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 283
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 286
    :cond_2
    const v0, 0x7f0b01e8

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 287
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->q:I

    .line 289
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/dv;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/dv;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 296
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dw;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dw;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    invoke-virtual {v1, v4, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 303
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->h:Landroid/widget/ListView;

    .line 75
    invoke-static {}, Lcom/keniu/security/util/ac;->a()Lcom/keniu/security/util/ac;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ac;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ek;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    .line 76
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    .line 77
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    .line 79
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/dx;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->j:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-direct {v1, p0, p0, v0}, Lcom/ijinshan/kinghelper/firewall/dx;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->i:Lcom/ijinshan/kinghelper/firewall/dx;

    .line 80
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->i:Lcom/ijinshan/kinghelper/firewall/dx;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->n:Landroid/widget/TextView;

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f0b015a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput p3, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->o:I

    .line 173
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 174
    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 175
    const v1, 0x7f070040

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 176
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    .line 177
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->m:Z

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setResult(I)V

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setResult(I)V

    goto :goto_0
.end method
