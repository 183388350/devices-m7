.class Lcom/htc/camera/component/BubbleToastManager$4;
.super Ljava/lang/Object;
.source "BubbleToastManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/BubbleToastManager;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$4;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$4;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->hideBubbleToast()V
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$100(Lcom/htc/camera/component/BubbleToastManager;)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$4;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast()Z
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$000(Lcom/htc/camera/component/BubbleToastManager;)Z

    goto :goto_0
.end method