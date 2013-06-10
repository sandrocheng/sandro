.class public Lcom/google/android/apps/analytics/Item$Builder;
.super Ljava/lang/Object;


# instance fields
.field private itemCategory:Ljava/lang/String;

.field private final itemCount:J

.field private itemName:Ljava/lang/String;

.field private final itemPrice:D

.field private final itemSKU:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemCategory:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemSKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/analytics/Item$Builder;->orderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemSKU:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemPrice:D

    iput-wide p5, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemCount:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemSKU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/analytics/Item$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemPrice:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/analytics/Item$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemCount:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemCategory:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/apps/analytics/Item;
    .locals 2

    new-instance v0, Lcom/google/android/apps/analytics/Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/analytics/Item;-><init>(Lcom/google/android/apps/analytics/Item$Builder;Lcom/google/android/apps/analytics/Item$1;)V

    return-object v0
.end method

.method public setItemCategory(Ljava/lang/String;)Lcom/google/android/apps/analytics/Item$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setItemName(Ljava/lang/String;)Lcom/google/android/apps/analytics/Item$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/Item$Builder;->itemName:Ljava/lang/String;

    return-object p0
.end method
