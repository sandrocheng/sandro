.class public Lcom/google/android/apps/analytics/Item;
.super Ljava/lang/Object;


# instance fields
.field private final itemCategory:Ljava/lang/String;

.field private final itemCount:J

.field private final itemName:Ljava/lang/String;

.field private final itemPrice:D

.field private final itemSKU:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/Item$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->orderId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$000(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item;->orderId:Ljava/lang/String;

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->itemSKU:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$100(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemSKU:Ljava/lang/String;

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->itemPrice:D
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$200(Lcom/google/android/apps/analytics/Item$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/Item;->itemPrice:D

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->itemCount:J
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$300(Lcom/google/android/apps/analytics/Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/Item;->itemCount:J

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->itemName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$400(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemName:Ljava/lang/String;

    #getter for: Lcom/google/android/apps/analytics/Item$Builder;->itemCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/analytics/Item$Builder;->access$500(Lcom/google/android/apps/analytics/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemCategory:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/Item$Builder;Lcom/google/android/apps/analytics/Item$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/Item;-><init>(Lcom/google/android/apps/analytics/Item$Builder;)V

    return-void
.end method


# virtual methods
.method getItemCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemCategory:Ljava/lang/String;

    return-object v0
.end method

.method getItemCount()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/Item;->itemCount:J

    return-wide v0
.end method

.method getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method getItemPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/Item;->itemPrice:D

    return-wide v0
.end method

.method getItemSKU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item;->itemSKU:Ljava/lang/String;

    return-object v0
.end method

.method getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Item;->orderId:Ljava/lang/String;

    return-object v0
.end method
