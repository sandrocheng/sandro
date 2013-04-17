.class public Lcom/tencent/powermanager/uilib/view/BatteryScreenView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, La$a;->BatteryScreenView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->addView(Landroid/view/View;)V

    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a:Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a:Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a:Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b()V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->a:Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->setBatteryLevel(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
