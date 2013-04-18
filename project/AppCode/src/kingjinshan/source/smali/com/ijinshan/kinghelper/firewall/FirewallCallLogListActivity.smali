.class public Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;
.super Landroid/app/ListActivity;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final a:Z = true

.field private static final e:Ljava/lang/String; = "FirewallCallLogListActivity"

.field private static final f:Ljava/lang/String; = "FirewallCallLogListActivity_editmode"


# instance fields
.field private b:Lcom/ijinshan/kinghelper/firewall/q;

.field private c:Z

.field private d:Landroid/widget/CheckBox;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/PopupWindow;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    .line 700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->i:J

    return-void
.end method

.method private a(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 409
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 411
    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 412
    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    .line 413
    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 419
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    goto :goto_0

    .line 413
    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(IJLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p4, v5, v1, v5}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const v0, 0x7f0b0130

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :cond_0
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 276
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    .line 291
    invoke-interface {v0, p4}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    .line 293
    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 310
    :pswitch_3
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 318
    :pswitch_4
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 326
    :pswitch_5
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/j;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/j;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/k;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/k;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/l;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/ijinshan/kinghelper/firewall/l;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 330
    :pswitch_6
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 331
    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    .line 332
    if-lez v0, :cond_2

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 338
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 332
    :cond_2
    const v0, 0x7f0b0127

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 350
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 352
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 354
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 356
    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 359
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 360
    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 361
    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/j;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/j;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 369
    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/k;

    invoke-direct {v2, p0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/k;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 386
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/l;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ijinshan/kinghelper/firewall/l;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 394
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0127

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;IJLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p4, v5, v1, v5}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0130

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

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

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/j;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/j;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/k;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/k;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/l;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/ijinshan/kinghelper/firewall/l;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0b0127

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    long-to-int v1, p1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->e(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

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
    if-lez v1, :cond_2

    const v0, 0x7f0b0129

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0b012a

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 243
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 244
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    return-void
.end method

.method private b(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 429
    invoke-static {p3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 434
    :cond_0
    long-to-int v1, p1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->e(I)I

    move-result v1

    .line 436
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 437
    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    const-string v2, ""

    invoke-static {v3, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 446
    :cond_1
    if-lez v1, :cond_2

    .line 447
    const v0, 0x7f0b0129

    .line 452
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 454
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 455
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    goto :goto_0

    .line 449
    :cond_2
    const v0, 0x7f0b012a

    goto :goto_1
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 684
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->c()[I

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    const-string v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 688
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 695
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 859
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 861
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 862
    const v1, 0x7f0b011d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 863
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 864
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/o;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/o;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 883
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 888
    :goto_0
    return-void

    .line 885
    :cond_0
    const v0, 0x7f0b00b1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    return v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b011d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/o;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/o;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b00b1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    .line 925
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    .line 927
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->i:J

    .line 711
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009e

    if-ne v0, v1, :cond_3

    .line 718
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 719
    const v0, 0x7f0b0147

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 728
    const v0, 0x7f0b01f6

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 735
    :cond_2
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 737
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 738
    const v1, 0x7f0b011b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 740
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v7}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 741
    const v1, 0x104000a

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/m;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/m;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 766
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    .line 767
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080024

    if-ne v0, v1, :cond_7

    .line 768
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 769
    const v0, 0x7f0b0147

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 777
    const v0, 0x7f0b01f5

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 783
    :cond_5
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 784
    const-string v1, "FirewallCallLogListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 788
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 789
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->b()V

    .line 791
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 792
    iput-boolean v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    .line 793
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    .line 797
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 798
    const v0, 0x7f0b0128

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 802
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009a

    if-ne v0, v1, :cond_9

    .line 804
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->i:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 808
    iput-object v7, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    goto/16 :goto_0

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 811
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 813
    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 816
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v8, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    .line 820
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 821
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 823
    const v1, 0x7f080312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/n;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/n;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    const v1, 0x7f080313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 835
    const v1, 0x7f080315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 837
    const v1, 0x7f080314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 839
    const v1, 0x7f080316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 841
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->i:J

    goto/16 :goto_0

    .line 844
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080099

    if-ne v0, v1, :cond_0

    .line 845
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Z)V

    .line 847
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 851
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    const v1, -0x9b44ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->requestWindowFeature(I)Z

    .line 89
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 92
    const-string v0, "date DESC"

    invoke-static {v1, v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 95
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/q;

    invoke-direct {v1, p0, p0, v0}, Lcom/ijinshan/kinghelper/firewall/q;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    .line 97
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/h;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/h;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    const-string v1, "new"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->c(Landroid/content/ContentValues;)I

    .line 149
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallCallLogListActivity_editmode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "telman_log"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    :cond_0
    iput-boolean v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    .line 170
    :goto_0
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    .line 171
    return-void

    .line 168
    :cond_1
    iput-boolean v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/q;->a(I)V

    .line 915
    :goto_0
    return-void

    .line 906
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE"

    const-string v2, "FirewallLogDetailActivity_LOG_TYPE_CALL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 910
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 912
    const-string v2, "FirewallLogDetailActivity_LOG_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 223
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c:Z

    .line 226
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    move v0, v1

    .line 238
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->finish()V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h:Landroid/widget/PopupWindow;

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 204
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    .line 206
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    const v1, -0x9b44ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 218
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b()V

    .line 219
    return-void

    .line 212
    :cond_0
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    const v1, -0x1c57d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 197
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;)V

    .line 198
    return-void
.end method
