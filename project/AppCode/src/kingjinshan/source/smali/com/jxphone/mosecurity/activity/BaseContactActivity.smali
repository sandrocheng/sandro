.class public Lcom/jxphone/mosecurity/activity/BaseContactActivity;
.super Lcom/jxphone/mosecurity/activity/v;
.source "BaseContactActivity.java"


# static fields
.field protected static final b:I = 0x0

.field protected static final c:I = 0x1

.field protected static final d:I = 0x3

.field protected static final e:I = 0x4

.field protected static final f:I = 0x5

.field protected static g:Lcom/jxphone/mosecurity/c/b; = null

.field private static final l:Ljava/lang/String; = "BaseContactActivity"

.field private static final m:Ljava/lang/String; = "isPassed"

.field private static n:S

.field private static o:Lcom/jxphone/mosecurity/activity/r;


# instance fields
.field protected h:Lcom/jxphone/mosecurity/c/c;

.field protected i:Z

.field protected j:Z

.field k:Lcom/jxphone/mosecurity/d/n;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    sput-short v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    .line 76
    sput-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    .line 77
    sput-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->o:Lcom/jxphone/mosecurity/activity/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/v;-><init>()V

    .line 78
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->a:Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->h:Lcom/jxphone/mosecurity/c/c;

    .line 79
    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    .line 82
    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    .line 91
    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->j:Z

    .line 948
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)Landroid/app/Dialog;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    .line 677
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 679
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v5

    .line 680
    const v0, 0x7f080350

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 683
    const v1, 0x7f080351

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 685
    const v2, 0x7f080353

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 688
    invoke-virtual {v5, p1}, Lcom/jxphone/mosecurity/d/k;->a(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    const v3, 0x7f08034f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 692
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    const v0, 0x7f0b05fe

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 695
    const v0, 0x7f0b05ff

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 701
    :goto_0
    const v0, 0x7f080352

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 703
    const v1, 0x7f080354

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 706
    new-instance v2, Lcom/jxphone/mosecurity/activity/u;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/u;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 707
    new-instance v0, Lcom/jxphone/mosecurity/activity/u;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/activity/u;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 709
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b05fd

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 712
    new-instance v1, Lcom/jxphone/mosecurity/activity/p;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/p;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 720
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 722
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->b()Lcom/keniu/security/util/aq;

    .line 723
    const v1, 0x7f0b0682

    new-instance v2, Lcom/jxphone/mosecurity/activity/q;

    invoke-direct {v2, v4, v5, p1, p0}, Lcom/jxphone/mosecurity/activity/q;-><init>(Landroid/view/View;Lcom/jxphone/mosecurity/d/k;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 779
    const v1, 0x7f0b0683

    new-instance v2, Lcom/jxphone/mosecurity/activity/b;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 790
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 791
    const v1, 0x7f080355

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 793
    const v1, 0x7f080356

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 795
    return-object v0

    .line 698
    :cond_0
    new-instance v1, Lcom/jxphone/mosecurity/activity/u;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/activity/u;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/jxphone/mosecurity/activity/r;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 254
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 255
    const v1, 0x7f0b0665

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 260
    const v1, 0x7f0b0683

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 261
    const v1, 0x7f070016

    new-instance v2, Lcom/jxphone/mosecurity/activity/i;

    invoke-direct {v2, p0, p1, p2}, Lcom/jxphone/mosecurity/activity/i;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/content/Context;Lcom/jxphone/mosecurity/activity/r;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 318
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/activity/r;)Landroid/app/Dialog;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v12, 0x7f0b05f0

    const v11, 0x7f0b052b

    const v10, 0x7f0b0519

    .line 482
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 484
    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 486
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 488
    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 491
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v5

    .line 493
    new-instance v8, Lcom/keniu/security/util/aq;

    invoke-direct {v8, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 494
    invoke-virtual {v8, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 495
    const v0, 0x7f0b0683

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 498
    sget-object v0, Lcom/jxphone/mosecurity/activity/h;->a:[I

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 529
    const v9, 0x7f0b05f3

    .line 530
    sget-object v7, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 535
    sget-object v7, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 540
    sget-object v7, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v9

    .line 548
    :goto_0
    invoke-virtual {v8, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 549
    new-instance v0, Lcom/jxphone/mosecurity/activity/n;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/n;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 562
    invoke-virtual {v8}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 501
    :pswitch_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 503
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    move-object v7, p1

    .line 505
    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v12

    .line 510
    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    move-object v7, p1

    .line 513
    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v10

    .line 518
    goto :goto_0

    .line 521
    :pswitch_2
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object v0, p0

    move-object v1, p0

    move-object v6, p2

    move-object v7, p1

    .line 522
    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v11

    .line 527
    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    new-instance v0, Lcom/jxphone/mosecurity/activity/o;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p7

    move-object v6, p5

    move-object v7, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/jxphone/mosecurity/activity/o;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/logic/a/d;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/activity/r;)V

    return-object v0
.end method

.method private static a(Landroid/app/Dialog;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 186
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 191
    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 199
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(Lcom/jxphone/mosecurity/c/b;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 322
    new-instance v3, Lcom/jxphone/mosecurity/activity/r;

    invoke-direct {v3}, Lcom/jxphone/mosecurity/activity/r;-><init>()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0800be

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800c0

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800c1

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0660

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0683

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0682

    new-instance v5, Lcom/jxphone/mosecurity/activity/k;

    invoke-direct {v5, p0, v1, v0, v3}, Lcom/jxphone/mosecurity/activity/k;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jxphone/mosecurity/activity/r;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 323
    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 329
    const v0, 0x7f0800be

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    const v1, 0x7f0800c0

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    const v2, 0x7f0800c1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 335
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 340
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    const v4, 0x7f0b0660

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v3, 0x7f0b0683

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    const v3, 0x7f0b0682

    new-instance v4, Lcom/jxphone/mosecurity/activity/k;

    invoke-direct {v4, p0, v1, v0, p2}, Lcom/jxphone/mosecurity/activity/k;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jxphone/mosecurity/activity/r;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    return v0
.end method

.method private static b(Landroid/app/Dialog;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    .line 210
    :goto_0
    const v0, 0x7f0b0665

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 215
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    goto :goto_0
.end method

.method private m()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f070009

    new-instance v2, Lcom/jxphone/mosecurity/activity/a;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/a;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b05f1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private n()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 458
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 459
    const v1, 0x7f0b066a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 460
    const v1, 0x7f0b066b

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 461
    const v1, 0x7f0b0682

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 462
    const v1, 0x7f0b0684

    new-instance v2, Lcom/jxphone/mosecurity/activity/m;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/m;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 471
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private o()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 824
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 827
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0630

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v1

    .line 830
    new-instance v2, Lcom/jxphone/mosecurity/activity/c;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/c;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 837
    const v2, 0x7f0802fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 839
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 840
    new-instance v2, Lcom/jxphone/mosecurity/activity/u;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/u;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 842
    new-instance v2, Lcom/jxphone/mosecurity/activity/d;

    invoke-direct {v2, p0, v0}, Lcom/jxphone/mosecurity/activity/d;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;)V

    .line 903
    const v0, 0x7f0b0682

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 904
    const v0, 0x7f0b0683

    new-instance v2, Lcom/jxphone/mosecurity/activity/e;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/e;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 911
    new-instance v0, Lcom/jxphone/mosecurity/activity/f;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/f;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 918
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 920
    new-instance v1, Lcom/jxphone/mosecurity/activity/g;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/g;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 929
    return-object v0
.end method


# virtual methods
.method protected a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/v;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "isPassed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    .line 133
    :cond_0
    return-object v0
.end method

.method protected final a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    sput-object p2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    .line 165
    sput-object p3, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->o:Lcom/jxphone/mosecurity/activity/r;

    .line 166
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->showDialog(I)V

    .line 167
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/activity/s;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 393
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 395
    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 397
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 399
    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 401
    :cond_0
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    new-instance v6, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 408
    const v1, 0x7f0b05f2

    .line 409
    sget-object v2, Lcom/jxphone/mosecurity/activity/h;->a:[I

    invoke-virtual {p3}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 417
    :goto_1
    :pswitch_0
    invoke-virtual {v6, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 418
    invoke-virtual {v6, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 419
    const v0, 0x7f0b0683

    invoke-virtual {v6, v0, v7}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 420
    const v7, 0x7f0b0682

    new-instance v0, Lcom/jxphone/mosecurity/activity/l;

    move-object v1, p0

    move-object v2, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jxphone/mosecurity/activity/l;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Lcom/jxphone/mosecurity/activity/s;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jxphone/mosecurity/c/c;)V

    invoke-virtual {v6, v7, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 429
    invoke-virtual {v6}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 430
    return-void

    .line 403
    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :pswitch_1
    const v1, 0x7f0b051a

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 943
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/v;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 944
    const-string v1, "isPassed"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 945
    return-object v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 433
    const v0, 0x7f0b0257

    return v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    .line 803
    sget-short v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    sput-short v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    .line 804
    return-void
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 810
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/k;->a()Z

    move-result v0

    .line 812
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    if-nez v1, :cond_0

    sget-short v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    if-gtz v1, :cond_0

    if-nez v0, :cond_2

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->f()V

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a:Z

    if-nez v0, :cond_1

    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public final bridge synthetic h()Z
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/v;->h()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/v;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a()Landroid/os/Bundle;

    .line 124
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isDummy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    .line 125
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter

    .prologue
    const v13, 0x7f0b05f0

    const v12, 0x7f0b052b

    const v11, 0x7f0b0519

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/v;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 141
    :pswitch_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f070009

    new-instance v2, Lcom/jxphone/mosecurity/activity/a;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/a;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b05f1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0630

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v1

    new-instance v2, Lcom/jxphone/mosecurity/activity/c;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/c;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0802fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/u;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/u;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/d;

    invoke-direct {v2, p0, v0}, Lcom/jxphone/mosecurity/activity/d;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;)V

    const v0, 0x7f0b0682

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    new-instance v2, Lcom/jxphone/mosecurity/activity/e;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/e;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/jxphone/mosecurity/activity/f;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/f;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/jxphone/mosecurity/activity/g;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/g;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->o:Lcom/jxphone/mosecurity/activity/r;

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0665

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0683

    invoke-virtual {v1, v2, v10}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v2, 0x7f070016

    new-instance v3, Lcom/jxphone/mosecurity/activity/i;

    invoke-direct {v3, p0, p0, v0}, Lcom/jxphone/mosecurity/activity/i;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/content/Context;Lcom/jxphone/mosecurity/activity/r;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :pswitch_4
    iget-object v7, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->h:Lcom/jxphone/mosecurity/c/c;

    sget-object v6, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->o:Lcom/jxphone/mosecurity/activity/r;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v5

    new-instance v8, Lcom/keniu/security/util/aq;

    invoke-direct {v8, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v8, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    invoke-virtual {v8, v0, v10}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    sget-object v0, Lcom/jxphone/mosecurity/activity/h;->a:[I

    invoke-virtual {v7}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    const v9, 0x7f0b05f3

    sget-object v7, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    sget-object v7, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    sget-object v7, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v9

    :goto_1
    invoke-virtual {v8, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/jxphone/mosecurity/activity/n;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/n;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v8}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v13

    goto :goto_1

    :pswitch_6
    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v11

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/logic/a/d;Lcom/jxphone/mosecurity/activity/r;Lcom/jxphone/mosecurity/c/c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move v0, v12

    goto :goto_1

    .line 153
    :pswitch_8
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b066a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b066b

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1, v10}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0684

    new-instance v2, Lcom/jxphone/mosecurity/activity/m;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/m;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 934
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/v;->onDestroy()V

    .line 935
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->p:Z

    .line 937
    sget-short v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->n:S

    .line 939
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->k:Lcom/jxphone/mosecurity/d/n;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->k:Lcom/jxphone/mosecurity/d/n;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/n;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 672
    :cond_0
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/v;->onPause()V

    .line 673
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    sparse-switch p1, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 173
    :sswitch_0
    const v0, 0x7f0800be

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0800c0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :sswitch_1
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    :goto_2
    const v0, 0x7f0b0665

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    goto :goto_2

    .line 179
    :sswitch_2
    const v0, 0x7f0b0686

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7f070014 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
