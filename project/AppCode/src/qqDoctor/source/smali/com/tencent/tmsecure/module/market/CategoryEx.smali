.class public Lcom/tencent/tmsecure/module/market/CategoryEx;
.super Ljava/lang/Object;


# instance fields
.field public category:LQQPIM/Category;

.field public expand:LQQPIM/AndroidCategoryExpand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()LQQPIM/Category;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/CategoryEx;->category:LQQPIM/Category;

    return-object v0
.end method

.method public getExpand()LQQPIM/AndroidCategoryExpand;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/CategoryEx;->expand:LQQPIM/AndroidCategoryExpand;

    return-object v0
.end method

.method public setCategory(LQQPIM/Category;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/CategoryEx;->category:LQQPIM/Category;

    return-void
.end method

.method public setExpand(LQQPIM/AndroidCategoryExpand;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/CategoryEx;->expand:LQQPIM/AndroidCategoryExpand;

    return-void
.end method
