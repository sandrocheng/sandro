.class public Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;
.super Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;
    }
.end annotation


# static fields
.field private static A:I

.field private static B:I

.field private static g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lac$a;",
            ">;"
        }
    .end annotation
.end field

.field private static k:I

.field private static l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;


# instance fields
.field private C:Landroid/os/Handler;

.field private i:Landroid/view/WindowManager$LayoutParams;

.field private j:Landroid/content/Context;

.field private m:Landroid/view/View;

.field private n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

.field private r:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

.field private s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->A:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->B:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    new-instance v0, Ldo;

    invoke-direct {v0}, Ldo;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->C:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->e:I

    iput v4, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->d:I

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->y:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->q:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->v:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->r:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->w:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->x:Landroid/widget/LinearLayout;

    sget v0, Lac;->a:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    return-object v0
.end method

.method public static a(Lac$a;)V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;-><init>(B)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    :cond_0
    return-void
.end method

.method public static b()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    return-object v0
.end method

.method public static b(I)V
    .locals 12

    const v11, 0x7f060066

    const/16 v10, 0x8

    const/4 v9, 0x0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->setBatteryLevel(I)V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->setBatteryLevel(I)V

    sget-object v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-static {}, La;->a()J

    move-result-wide v5

    iget-object v0, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v3, 0x7f080050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->m:Landroid/view/View;

    const v7, 0x7f08004f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    iget-object v7, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-static {v7, v5, v6}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-static {v0, v5, v6}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;-><init>(B)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    :cond_0
    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->f()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-virtual {v2, v3, v3}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->C:Landroid/os/Handler;

    sget v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->A:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-direct {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->k()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->r:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    return-object v0
.end method

.method public static c()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lac;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-virtual {v2, v3, v3}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->C:Landroid/os/Handler;

    sget v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->B:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    return-void
.end method

.method static synthetic d(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->k()V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->l:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->q:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->v:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->r:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b()V

    goto :goto_0
.end method

.method public static g()V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->z:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->q:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->n:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->b()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->v:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->s:Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->b()V

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->r:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c()V

    goto :goto_0
.end method

.method public static synthetic h()I
    .locals 1

    sget v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->A:I

    return v0
.end method

.method public static synthetic i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    return-object v0
.end method

.method public static synthetic j()I
    .locals 1

    sget v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->B:I

    return v0
.end method

.method private k()V
    .locals 10

    const v9, 0x7f06005f

    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    add-int/lit8 v0, v0, 0xc

    :cond_0
    if-lt v0, v5, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lt v2, v5, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f06005e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j:Landroid/content/Context;

    const v2, 0x7f060065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setOnControlListener(Lac$a;)V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->k:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget v0, Lac;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->h()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_1
    if-eq p1, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_3
    sget v0, Lac;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->g()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->y:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->y:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->y:I

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b:I

    goto :goto_2
.end method

.method public final a(I)V
    .locals 2

    if-lez p1, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {}, Lac;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
