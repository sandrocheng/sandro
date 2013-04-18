.class public Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;
.super Landroid/app/Activity;
.source "FirewallLogDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "FirewallLogDetailActivity_LOG_TYPE"

.field public static final b:Ljava/lang/String; = "FirewallLogDetailActivity_LOG_TYPE_SMS"

.field public static final c:Ljava/lang/String; = "FirewallLogDetailActivity_LOG_TYPE_CALL"

.field public static final d:Ljava/lang/String; = "FirewallLogDetailActivity_LOG_FromNotify"

.field public static final e:Ljava/lang/String; = "FirewallLogDetailActivity_LOG_ID"

.field private static final f:Ljava/text/SimpleDateFormat;


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    sget v0, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->u:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const-wide/32 v7, 0x40000000

    const-wide/32 v5, 0x100000

    const-wide/16 v2, 0x400

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 247
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 248
    const-string v0, "%dB"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 249
    :cond_0
    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    cmp-long v0, p0, v5

    if-gtz v0, :cond_1

    .line 250
    const-string v0, "%dKB"

    new-array v1, v1, [Ljava/lang/Object;

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    cmp-long v0, p0, v5

    if-ltz v0, :cond_2

    cmp-long v0, p0, v7

    if-gtz v0, :cond_2

    .line 252
    const-string v0, "%dMB"

    new-array v1, v1, [Ljava/lang/Object;

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    const-string v0, "%dGB"

    new-array v1, v1, [Ljava/lang/Object;

    div-long v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x100000

    const-wide/16 v7, 0x400

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->u:Z

    .line 144
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    .line 145
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->c(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    const-string v1, "logtype"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0186

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v4, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const-string v1, "firewall_log_description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b013d

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    iget v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    invoke-static {p0, v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "firewall_log_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->h:I

    if-ne v1, v2, :cond_1

    const-string v1, "m_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "exp"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v7

    if-gez v5, :cond_8

    const-string v5, "%dB"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u5c0f\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u8fc7\u671f\u65f6\u95f4:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0211

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    aput-object v5, v4, v9

    aput-object v1, v4, v10

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v2, 0x7f0b020f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->r:Ljava/lang/String;

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "read"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(JLandroid/content/ContentValues;)I

    .line 147
    :cond_4
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v1, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v0, v1, :cond_b

    .line 148
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :goto_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    :cond_5
    :goto_3
    return-void

    .line 146
    :cond_6
    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    cmp-long v5, v1, v7

    if-ltz v5, :cond_9

    cmp-long v5, v1, v12

    if-gtz v5, :cond_9

    const-string v5, "%dKB"

    new-array v6, v10, [Ljava/lang/Object;

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    cmp-long v5, v1, v12

    if-ltz v5, :cond_a

    const-wide/32 v5, 0x40000000

    cmp-long v5, v1, v5

    if-gtz v5, :cond_a

    const-string v5, "%dMB"

    new-array v6, v10, [Ljava/lang/Object;

    div-long/2addr v1, v12

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const-string v5, "%dGB"

    new-array v6, v10, [Ljava/lang/Object;

    const-wide/32 v7, 0x40000000

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 154
    :cond_b
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 160
    :cond_c
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_CALL"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 161
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->d(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {p0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0186

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_d
    if-eqz v1, :cond_10

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const-string v1, "firewall_log_description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b013c

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(JLandroid/content/ContentValues;)I

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u6765\u7535\u4eba\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 166
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_5
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    const-string v0, "4"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 161
    :cond_10
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 169
    :cond_11
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 178
    :cond_12
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_3
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    packed-switch p1, :pswitch_data_0

    .line 575
    :goto_0
    return-void

    .line 499
    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 500
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    .line 501
    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 506
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    .line 501
    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    .line 510
    :pswitch_1
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-direct {p0, v4, v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(ZJ)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v5, v2, v5}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const v0, 0x7f0b0130

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    :goto_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    .line 521
    :cond_1
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 529
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 532
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 542
    :pswitch_4
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_2

    .line 545
    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 549
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v1, "phone"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 562
    :pswitch_5
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 566
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    .line 570
    :pswitch_6
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 574
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->f(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-static {v3, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    :cond_0
    if-lez v1, :cond_4

    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b0128

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    const-string v1, "FirewallLogDetailActivity_LOG_TYPE_CALL"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->e(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0129

    goto :goto_1

    :cond_4
    const v0, 0x7f0b012a

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    :pswitch_1
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-direct {p0, v3, v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(ZJ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    :pswitch_7
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(ZJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 361
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 363
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 366
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 368
    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 371
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 372
    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 373
    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/z;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/z;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 381
    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/aa;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ijinshan/kinghelper/firewall/aa;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;ZJ)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 396
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ab;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ab;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 404
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 416
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 191
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    .line 195
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 196
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->d(I)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0186

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_0
    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    const-string v1, "firewall_log_description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b013c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 232
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 240
    const-string v1, "new"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(JLandroid/content/ContentValues;)I

    .line 244
    :cond_2
    return-void

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    packed-switch p1, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 588
    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 589
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    .line 590
    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    .line 590
    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    .line 599
    :pswitch_1
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-direct {p0, v3, v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(ZJ)V

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 626
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 637
    :pswitch_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :pswitch_5
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_1

    .line 646
    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 650
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v1, "phone"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 663
    :pswitch_6
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 667
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    .line 671
    :pswitch_7
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 675
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    :pswitch_1
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-direct {p0, v4, v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(ZJ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v5, v2, v5}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0130

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    :pswitch_6
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    return-wide v0
.end method

.method private c()V
    .locals 10

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 264
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogDetailActivity_LOG_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    .line 265
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 266
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->c(I)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    .line 272
    const-string v1, "logtype"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    .line 275
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0186

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v4, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v3, v4, :cond_5

    .line 290
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    :goto_0
    const-string v1, "firewall_log_description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b013d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    iget v6, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    invoke-static {p0, v5, v6}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const-string v1, "firewall_log_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 311
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->h:I

    if-ne v1, v2, :cond_1

    .line 318
    const-string v1, "m_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 320
    const-string v3, "exp"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 322
    const-wide/16 v5, 0x400

    cmp-long v5, v1, v5

    if-gez v5, :cond_7

    const-string v5, "%dB"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u5c0f\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u8fc7\u671f\u65f6\u95f4:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    .line 327
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 329
    const v3, 0x7f0b0211

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->p:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v1, v2, :cond_2

    .line 337
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    const v2, 0x7f0b020f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 342
    if-lez v1, :cond_2

    .line 343
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->r:Ljava/lang/String;

    .line 347
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(JLandroid/content/ContentValues;)I

    .line 355
    :cond_4
    return-void

    .line 293
    :cond_5
    if-eqz v2, :cond_6

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 294
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 297
    :cond_6
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 322
    :cond_7
    const-wide/16 v5, 0x400

    cmp-long v5, v1, v5

    if-ltz v5, :cond_8

    const-wide/32 v5, 0x100000

    cmp-long v5, v1, v5

    if-gtz v5, :cond_8

    const-string v5, "%dKB"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x400

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const-wide/32 v5, 0x100000

    cmp-long v5, v1, v5

    if-ltz v5, :cond_9

    const-wide/32 v5, 0x40000000

    cmp-long v5, v1, v5

    if-gtz v5, :cond_9

    const-string v5, "%dMB"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/32 v8, 0x100000

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    const-string v5, "%dGB"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/32 v8, 0x40000000

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 683
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 685
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 686
    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 687
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 688
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ad;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ad;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 711
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 712
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 718
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 719
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string v1, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->f(I)I

    move-result v1

    .line 731
    :goto_1
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 732
    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 736
    const-string v2, ""

    invoke-static {v3, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 741
    :cond_1
    if-lez v1, :cond_4

    .line 742
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    const v0, 0x7f0b0128

    .line 752
    :goto_2
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 755
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    goto :goto_0

    .line 727
    :cond_2
    const-string v1, "FirewallLogDetailActivity_LOG_TYPE_CALL"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 728
    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->e(I)I

    move-result v1

    goto :goto_1

    .line 745
    :cond_3
    const v0, 0x7f0b0129

    goto :goto_2

    .line 749
    :cond_4
    const v0, 0x7f0b012a

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 421
    packed-switch v0, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return-void

    .line 424
    :pswitch_1
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v1, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->r:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    :cond_0
    const-string v0, "opwappushurl"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->q:I

    sget v1, Lcom/ijinshan/kinghelper/firewall/a/a;->h:I

    if-ne v0, v1, :cond_3

    .line 433
    const-string v0, "restoremms"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    :cond_2
    :goto_1
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    invoke-direct {p0, v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(ZJ)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 436
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->s:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->c(I)Landroid/database/Cursor;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    const-string v1, "firewall_from"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 442
    const-string v2, "1"

    invoke-static {p0, v2, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 448
    :cond_4
    const-string v0, "2"

    invoke-static {p0, v0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 454
    :pswitch_2
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ad;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ad;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto/16 :goto_0

    .line 458
    :pswitch_3
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_2
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 469
    const-string v2, "\u66f4\u591a\u64cd\u4f5c"

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 470
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ac;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ac;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 482
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 463
    :cond_5
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 421
    :pswitch_data_0
    .packed-switch 0x7f080056
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->j:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->l:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->m:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->n:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->u:Z

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_1
    return v0

    .line 128
    :cond_0
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 138
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a()V

    .line 116
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 185
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a()V

    .line 186
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->b(Landroid/content/Context;)V

    .line 187
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "firewallLogDetailActivity onstart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    return-void
.end method
