.class Lcom/hoi/widget/BinaryPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BinaryPicker.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/hoi/widget/d;

    invoke-direct {v0}, Lcom/hoi/widget/d;-><init>()V

    sput-object v0, Lcom/hoi/widget/BinaryPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/BinaryPicker$SavedState;-><init>(Landroid/os/Parcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->a:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->b:I

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hoi/widget/BinaryPicker$SavedState;-><init>(Landroid/os/Parcelable;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 150
    iput p2, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->a:I

    .line 151
    iput p3, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->b:I

    .line 152
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    iget v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/hoi/widget/BinaryPicker$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void
.end method
