.class public final Le;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le$b;,
        Le$a;
    }
.end annotation


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lde;
    .locals 1

    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde;->b()V

    invoke-virtual {v0, p1}, Lde;->a(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILe$a;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Le;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Laq;->a()Laq;

    move-result-object v6

    new-instance v7, Lde;

    invoke-direct {v7, p0}, Lde;-><init>(Landroid/content/Context;)V

    const v0, 0x7f060017

    invoke-virtual {v7, v0}, Lde;->setTitle(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080062

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const v1, 0x7f080064

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f080063

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Lde;->setContentView(Landroid/view/View;)V

    if-gez p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lf;

    invoke-direct {v3, v1, v0}, Lf;-><init>(Landroid/widget/CheckBox;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, p1, 0x64

    div-int/lit16 v8, v8, 0xff

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "%"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/16 v3, 0xd

    if-le p1, v3, :cond_3

    add-int/lit8 v3, p1, -0xd

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_3
    new-instance v3, Lg;

    invoke-direct {v3, v6, p0, v2}, Lg;-><init>(Laq;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v2, 0x7f060004

    new-instance v3, Lh;

    invoke-direct {v3, p2, v1, v0, v7}, Lh;-><init>(Le$a;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Lde;)V

    const/16 v0, 0x8

    invoke-virtual {v7, v2, v3, v0}, Lde;->a(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Li;

    invoke-direct {v0, v7}, Li;-><init>(Lde;)V

    invoke-virtual {v7, v0}, Lde;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7}, Lde;->show()V

    sput-boolean v4, Le;->a:Z

    goto/16 :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Le$b;)V
    .locals 4

    sget-boolean v0, Le;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    new-instance v2, Ldl;

    invoke-direct {v2}, Ldl;-><init>()V

    aget-object v3, p2, v0

    iput-object v3, v2, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1}, Ldf;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, p3}, Ldf;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lj;

    invoke-direct {v1, p4, v0}, Lj;-><init>(Le$b;Ldf;)V

    invoke-virtual {v0, v1}, Ldf;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lk;

    invoke-direct {v1}, Lk;-><init>()V

    invoke-virtual {v0, v1}, Ldf;->a(Ldm;)V

    invoke-virtual {v0}, Ldf;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Le;->a:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lfx;ZLaw;)V
    .locals 9

    const/4 v2, 0x0

    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lfx;->a:Ljava/lang/String;

    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lax;->c(Lfx;)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f060086

    move-object v1, p0

    move v7, v2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Le;->a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLaw;)V

    return-void
.end method

.method private static a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLaw;)V
    .locals 12

    sget-boolean v2, Le;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz p7, :cond_1

    const v2, 0x7f080031

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v3}, Lde;->a(Landroid/view/View;)V

    const v2, 0x7f080032

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/tencent/powermanager/uilib/CheckBoxView;

    invoke-virtual {v11, p2}, Lcom/tencent/powermanager/uilib/CheckBoxView;->setChecked(Z)V

    invoke-virtual {p0, p3}, Lde;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lde;->c()V

    const v2, 0x7f080030

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ll;

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Ll;-><init>(Lde;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLaw;)V

    invoke-virtual {v11, v2}, Lcom/tencent/powermanager/uilib/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f060086

    new-instance v3, Lm;

    move-object/from16 v0, p8

    invoke-direct {v3, v0, p1, p0}, Lm;-><init>(Law;Landroid/content/Context;Lde;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lde;->a(ILandroid/view/View$OnClickListener;I)V

    new-instance v2, Ln;

    move/from16 v0, p7

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v11, v1}, Ln;-><init>(ZLcom/tencent/powermanager/uilib/CheckBoxView;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lde;->a(Ldm;)V

    :try_start_0
    invoke-virtual {p0}, Lde;->show()V

    const/4 v2, 0x1

    sput-boolean v2, Le;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-boolean v3, Le;->a:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLaw;)V
    .locals 9

    const v5, 0x7f060086

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Le;->a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLaw;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 2

    const-class v0, Lez;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lez;

    invoke-virtual {v0}, Lez;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lez;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
